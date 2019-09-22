
import UIKit

class PhotoDetailModuleBuilder {

    func build(photo: Photo) -> PhotoDetailViewController? {
        let presenter = PhotoDetailPresenter()
        let view = PhotoDetailViewController(nibName: "PhotoDetailViewController", bundle: nil)
        view.viewOutput = presenter
        presenter.viewIntput = view
        let respository  = PhotoDetailRepository(webServices: WebServices())
        let interactor = PhotoDetailInteractor(repository: respository)
        presenter.interactorInput = interactor
        interactor.interactorOutput = presenter
        
        presenter.photoId = photo.id        
        return view
    }
}
