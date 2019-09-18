
import Foundation

protocol FeedViewOutput {
    func fetchPhotoFeed()
}

class FeedPresenter: FeedViewOutput {
    
    weak var interatorInput: FeedInteractorInput?
    
    func fetchPhotoFeed() {
        let photos = interatorInput?.fetchPhotoFeed()
    }
    
}
