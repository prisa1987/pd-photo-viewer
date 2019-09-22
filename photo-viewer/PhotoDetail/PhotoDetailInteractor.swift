
import Foundation

class PhotoDetailInteractor: PhotoDetailInteractorInput {
    
    let repository: PhotoDetailRepository
    weak var interactorOutput: PhotoDetailInteractorOutput?
    var photo: Photo?

    init(repository: PhotoDetailRepository) {
        self.repository = repository
    }

    func fetchPhotoDetail(id: String) {
        repository.callPhotoDetail(id: id) { [weak self] photo in
            DispatchQueue.main.async {
                self?.photo = photo
                self?.interactorOutput?.didUpdatePhotoDetail(photo: photo)
            }
        }
    }
}
