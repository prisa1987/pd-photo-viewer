
import UIKit

class FeedRouter {
    
    let navigationController: UINavigationController
    let storyboard: UIStoryboard?

    init(navigationController: UINavigationController, storyboard: UIStoryboard?) {
        self.navigationController = navigationController
        self.storyboard = storyboard
    }
    
    func goToPhotoDetail(photo: Photo) {
        
        let builder = PhotoDetailModuleBuilder(storyboard: storyboard)
        guard let photoDetailViewController = builder.build(photo: photo) else { return }
        navigationController.pushViewController(photoDetailViewController, animated: true)
    }
    
}
