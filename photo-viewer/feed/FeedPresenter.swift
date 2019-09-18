
import Foundation

protocol FeedViewOutput {
    func fetchPhotoFeed() -> [PhotoViewModel]
}

class FeedPresenter: FeedViewOutput {
    
    var interatorInput: FeedInteractorInput = FeedInteractor()
    
    func fetchPhotoFeed() -> [PhotoViewModel] {
        let photos = interatorInput.fetchPhotoFeed()
        var photoViewModels = [PhotoViewModel]()
    
        for photo in photos {
            let viewModel = PhotoViewModel(name: photo.name, url: photo.url)
            photoViewModels.append(viewModel)
        }

        return photoViewModels
    }
    
}

