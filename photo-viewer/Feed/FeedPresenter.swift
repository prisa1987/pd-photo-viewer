
import Foundation

protocol FeedViewOutput {
    func fetchPhotoFeed()
}

protocol FeedViewInput: class {
    func updateFeedView(photoViewModels: PhotoViewModels)
}

class FeedPresenter: FeedViewOutput, FeedInteractorOut {

    var interatorInput: FeedInteractorInput = FeedInteractor()
    weak var viewInput: FeedViewInput?
    
    func fetchPhotoFeed() {
        (interatorInput as? FeedInteractor)?.presenter = self
        interatorInput.fetchPhotoFeed()
    }
    
    func didUpdatePhotos(photos: [Photo]) {
        var photoViewModels = [PhotoViewModel]()
        
        for photo in photos {
            let viewModel = PhotoViewModel(name: photo.name ?? "", url: photo.url?.raw ?? "")
            photoViewModels.append(viewModel)
        }
        
        viewInput?.updateFeedView(photoViewModels: PhotoViewModels(photos: photoViewModels))
    }

}

