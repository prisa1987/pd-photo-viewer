
import Foundation

class PhotoDetailPresenter: PhotoDetailViewOutput, PhotoDetailInteractorOutput {
    
    weak var viewIntput: PhotoDetailViewInput?
    var interactorInput: PhotoDetailInteractorInput?
    var photoId: String? = nil

    func viewDidLoad() {
        guard let id = photoId else { return }
        fetchPhotoDetail(id: id)
    }

    func fetchPhotoDetail(id: String) {
        interactorInput?.fetchPhotoDetail(id: id)
    }
    
    func didUpdatePhotoDetail(photo: Photo) {
        viewIntput?.showPhotoDetail(photo: photo)
    }

}
