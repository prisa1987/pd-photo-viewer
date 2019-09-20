
import UIKit
           
protocol PhotoDetailViewInput: class {
    func showPhotoDetail(photo: Photo)
}

protocol PhotoDetailViewOutput: class {
    
}

class PhotoDetailViewController: UIViewController, PhotoDetailViewInput {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var profileLable: UILabel!
    
    var presenter: PhotoDetailPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewIntput = self
    }

    func showPhotoDetail(photo: Photo) {
        guard let url = URL(string: photo.url?.raw ?? "") else { return }
        imageView.kf.setImage(with: url)
    }
    
    
}
