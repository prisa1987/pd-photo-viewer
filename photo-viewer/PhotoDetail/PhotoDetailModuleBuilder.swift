
import UIKit

class PhotoDetailModuleBuilder {

    let storyboard: UIStoryboard?
    init(storyboard: UIStoryboard?) {
        self.storyboard = storyboard
    }

    func build(photo: Photo) -> PhotoDetailViewController? {
        let presenter = PhotoDetailPresenter(photo: photo)
        let view = storyboard?.instantiateViewController(identifier: "PhotoDetailViewController") as? PhotoDetailViewController
        view?.presenter = presenter
        return view
    }
}
