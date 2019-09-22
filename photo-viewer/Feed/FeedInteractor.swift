
import Foundation

protocol FeedInteractorInput: class {
    func fetchPhotoFeed()
}

protocol FeedInteractorOut: class {
    func didUpdatePhotos(photos: [Photo])
}

class FeedInteractor: FeedInteractorInput {
    
    let networking = WebServices()
    weak var presenter: FeedInteractorOut?
    
 
    func fetchPhotoFeed() {
        networking.performNetworkTask(
            endpoint: .photos,
            type: [Photo].self
        ){ [weak self] (response) in
            
            DispatchQueue.main.async {
                self?.presenter?.didUpdatePhotos(photos: response)
            }
            
        }}
}
