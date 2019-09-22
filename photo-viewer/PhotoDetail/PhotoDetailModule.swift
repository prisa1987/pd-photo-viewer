
import Foundation

protocol PhotoDetailViewInput: class {
    func showPhotoDetail(photo: Photo)
}

protocol PhotoDetailViewOutput: class {
    func viewDidLoad()
}

protocol PhotoDetailInteractorOutput: class {
    func didUpdatePhotoDetail(photo: Photo)
}

protocol PhotoDetailInteractorInput: class {
    func fetchPhotoDetail(id: String)
}
