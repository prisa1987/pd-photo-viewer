
import Foundation

class FeedInteractor: FeedInteractorInput {
    
    let repository: FeedRepository
    weak var interactorOutput: FeedInteractorOutput?
    private var photos = [Photo]()
    
    init(repository: FeedRepository) {
        self.repository = repository
    }

    func fetchPhotoFeed() {
        repository.callPhotoFeed { [weak self] (response) in
            DispatchQueue.main.async {
                self?.photos = response
                self?.interactorOutput?.didUpdatePhotos(photos:response)
            }   
        }
    }
    
    func getPhotos() -> [Photo] {
        return photos
    }
    
    func getPhoto(id: String) -> Photo? {
        return photos.first { $0.id == id }
    }
}
