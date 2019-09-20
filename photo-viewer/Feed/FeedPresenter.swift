
import Foundation

protocol FeedViewOutput {
    func fetchPhotoFeed()
    func didTapPhoto(id: String)
}

protocol FeedViewInput: class {
    func updateFeedView(photoViewModels: PhotoViewModels)
}

class FeedPresenter: FeedViewOutput, FeedInteractorOut {

    var interatorInput: FeedInteractorInput = FeedInteractor()
    weak var viewInput: FeedViewInput?
    var router: FeedRouter?
    
    func fetchPhotoFeed() {
        (interatorInput as? FeedInteractor)?.presenter = self
        interatorInput.fetchPhotoFeed()
    }
    
    func didUpdatePhotos(photos: [Photo]) {
        var photoViewModels = [PhotoViewModel]()
        
        for photo in photos {
            let viewModel = PhotoViewModel(
                id: photo.id,
                name: photo.name ?? "",
                url: photo.url?.raw ?? ""
            )
            photoViewModels.append(viewModel)
        }
        
        viewInput?.updateFeedView(photoViewModels: PhotoViewModels(photos: photoViewModels))
    }
    
    // MARK: Navigation
    func didTapPhoto(id: String) {
        guard let photo = interatorInput.getPhoto(id: id) else { return }
        router?.goToPhotoDetail(photo: photo)
    }

}

