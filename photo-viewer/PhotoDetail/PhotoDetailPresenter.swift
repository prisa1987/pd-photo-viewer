
import Foundation


class PhotoDetailPresenter: PhotoDetailViewOutput {
    
    weak var viewIntput: PhotoDetailViewInput?
    
    let photo: Photo?
    init(photo: Photo?) {
        self.photo = photo
    }
    
    func fetchPhotoDetail() {
        guard let photo = photo else { return }
        viewIntput?.showPhotoDetail(photo: photo)
    }
}
