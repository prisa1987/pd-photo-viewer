
import UIKit
import IGListKit

class FeedViewController: UIViewController, FeedViewInput {
    
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
        feedViewOutput?.viewInput = self
        adapter.collectionView = feedCollectionView
        adapter.dataSource = dataSource
        feedViewOutput?.fetchPhotoFeed()
    }

    func updateFeedView(photoViewModels: PhotoViewModels) {
        dataSource.datas = [photoViewModels]
        adapter.performUpdates(animated: true, completion: nil)
    }
    
}
