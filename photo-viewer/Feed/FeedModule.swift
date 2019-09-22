
import Foundation

protocol FeedViewOutput {
    func viewDidLoad()
    func fetchPhotoFeed()
    func didTapPhoto(id: String)
}

protocol FeedViewInput: class {
    func updateFeedView(photoViewModels: PhotoViewModels)
}

protocol FeedInteractorInput: class {
    func fetchPhotoFeed()
    func getPhotos() -> [Photo]
    func getPhoto(id: String) -> Photo?
}

protocol FeedInteractorOutput: class {
    func didUpdatePhotos(photos: [Photo])
}
