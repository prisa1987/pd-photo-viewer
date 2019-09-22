
import UIKit
import IGListKit

class FeedViewController: BaseViewController, FeedViewInput, PhotoCellDelegate {

    @IBOutlet weak var feedCollectionView: UICollectionView!
    
    var feedViewOutput: FeedViewOutput?
    
    lazy var adapter: ListAdapter = {
      return ListAdapter(
      updater: ListAdapterUpdater(),
      viewController: self,
      workingRangeSize: 0)
    }()
    
    let dataSource = FeedAdapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedViewOutput?.viewDidLoad()
        dataSource.delegate = self
        adapter.collectionView = feedCollectionView
        adapter.dataSource = dataSource
    }
    
    func updateFeedView(photoViewModels: PhotoViewModels) {
        dataSource.datas = [photoViewModels]
        adapter.performUpdates(animated: true, completion: nil)
    }
    
    // MARK: PhotoCellDelegate
    func didTapPhoto(id: String) {
        feedViewOutput?.didTapPhoto(id: id)
    }
}
