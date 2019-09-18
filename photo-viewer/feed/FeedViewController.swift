
import UIKit
import IGListKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var feedCollectionView: UICollectionView!
    
    var feedViewOutput: FeedPresenter? = FeedPresenter()
    
    lazy var adapter: ListAdapter = {
      return ListAdapter(
      updater: ListAdapterUpdater(),
      viewController: self,
      workingRangeSize: 0)
    }()
    
    let dataSource = FeedAdapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        feedCollectionView.register(PhotoCell.self, forCellWithReuseIdentifier: "PhotoCell")
        
        adapter.collectionView = feedCollectionView
        adapter.dataSource = dataSource
        dataSource.datas = feedViewOutput?.fetchPhotoFeed() ?? []
        
        adapter.performUpdates(animated: true, completion: nil)
    }

}
