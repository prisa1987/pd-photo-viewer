
import UIKit

class FeedRouter {
    
    let navigationController: UINavigationController
    let storyboard: UIStoryboard?

    init(navigationController: UINavigationController, storyboard: UIStoryboard?) {
        self.navigationController = navigationController
        self.storyboard = storyboard
    }
    
    func goToPhotoDetail(photo: Photo) {
        guard let detailViewController = storyboard?.instantiateViewController(withIdentifier: "PhotoDetailViewController") as? PhotoDetailViewController else { return }
        navigationController.pushViewController(detailViewController, animated: true)
    }
    
}
