
import UIKit
import IGListKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var feedCollectionView: UICollectionView!
    
    lazy var adapter: ListAdapter = {
      return ListAdapter(
      updater: ListAdapterUpdater(),
      viewController: self,
      workingRangeSize: 0)
    }()
    
    let dataSource =  FeedAdapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adapter.collectionView = feedCollectionView
        adapter.dataSource = dataSource
    }

}
