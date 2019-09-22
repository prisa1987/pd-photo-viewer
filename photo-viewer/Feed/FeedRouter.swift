
import UIKit

class FeedRouter {
    
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func goToPhotoDetail(photo: Photo) {
        
        let builder = PhotoDetailModuleBuilder()
        guard let photoDetailViewController = builder.build(photo: photo) else { return }
        navigationController.pushViewController(photoDetailViewController, animated: true)
    }
    
}
