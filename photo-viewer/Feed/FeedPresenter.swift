
import Foundation

class FeedPresenter: FeedViewOutput, FeedInteractorOutput {

    var interactorInput: FeedInteractorInput?
    weak var viewInput: FeedViewInput?
    var router: FeedRouter?
    
    func viewDidLoad() {
        fetchPhotoFeed()
    }

    func fetchPhotoFeed() {
        interactorInput?.fetchPhotoFeed()
    }
    
    func didUpdatePhotos(photos: [Photo]) {
        var photoViewModels = [PhotoViewModel]()
        
        for photo in photos {
            let viewModel = PhotoViewModel(
                id: photo.id,
                url: photo.url?.raw ?? ""
            )
            photoViewModels.append(viewModel)
        }
        
        viewInput?.updateFeedView(photoViewModels: PhotoViewModels(photos: photoViewModels))
    }
    
    // MARK: Navigation
    func didTapPhoto(id: String) {
        guard let photo = interactorInput?.getPhoto(id: id) else { return }
        router?.goToPhotoDetail(photo: photo)
    }

}

