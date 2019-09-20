
import UIKit
           
protocol PhotoDetailViewInput: class {
    func showPhotoDetail(photo: Photo)
}

protocol PhotoDetailViewOutput: class {
    
}

class PhotoDetailViewController: UIViewController, PhotoDetailViewInput {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var profileImageView: ProfileImageView!
    @IBOutlet weak var imageDesciption: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var presenter: PhotoDetailPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewIntput = self
        presenter?.fetchPhotoDetail()
    }

    func showPhotoDetail(photo: Photo) {
        guard let url = URL(string: photo.url?.raw ?? "") else { return }
        imageView?.kf.setImage(with: url)
        profileImageView.configureView(url: URL(string: photo.user?.profileImage.url ?? ""))
        profileLabel.text = photo.user?.name ?? ""
        descriptionLabel.text = photo.description ?? photo.altDescription
    }

}
