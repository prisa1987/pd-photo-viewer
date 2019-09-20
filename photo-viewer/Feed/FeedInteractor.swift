
import Foundation

protocol FeedInteractorInput: class {
    func fetchPhotoFeed()
    func getPhotos() -> [Photo]
    func getPhoto(id: String) -> Photo?
}

protocol FeedInteractorOut: class {
    func didUpdatePhotos(photos: [Photo])
}

class FeedInteractor: FeedInteractorInput {
    
    let networking = WebServices()
    weak var presenter: FeedInteractorOut?
    private var photos = [Photo]()
    
    func fetchPhotoFeed() {
        networking.performNetworkTask(
            endpoint: .photos,
            type: [Photo].self
        ){ [weak self] (response) in
            
            DispatchQueue.main.async {
                self?.photos = response
                self?.presenter?.didUpdatePhotos(photos: response)
            }
            
        }}
    
    func getPhotos() -> [Photo] {
        return photos
    }
    
    func getPhoto(id: String) -> Photo? {
        return photos.first { $0.id == id }
    }
}
