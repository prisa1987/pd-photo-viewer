
import Foundation

protocol FeedViewOutput {
    func fetchPhotoFeed() -> PhotoViewModels
}

class FeedPresenter: FeedViewOutput {
    
    var interatorInput: FeedInteractorInput = FeedInteractor()
    
    func fetchPhotoFeed() -> PhotoViewModels {
        let photos = interatorInput.fetchPhotoFeed()
        var photoViewModels = [PhotoViewModel]()
    
        for photo in photos {
            let viewModel = PhotoViewModel(name: photo.name, url: photo.url)
            photoViewModels.append(viewModel)
        }
        
    
        return  PhotoViewModels(photos: photoViewModels)
    }
    
}

