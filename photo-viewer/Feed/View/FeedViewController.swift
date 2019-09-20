
import UIKit
import IGListKit

class FeedViewController: UIViewController, FeedViewInput, PhotoCellDelegate {

    
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
        
        if let navigationController = navigationController {
            feedViewOutput?.router = FeedRouter(navigationController: navigationController, storyboard: storyboard)
        }
        dataSource.delegate = self
        feedViewOutput?.viewInput = self
        adapter.collectionView = feedCollectionView
        adapter.dataSource = dataSource
        feedViewOutput?.fetchPhotoFeed()
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
