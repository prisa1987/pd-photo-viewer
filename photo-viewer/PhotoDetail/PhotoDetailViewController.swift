
import UIKit

class PhotoDetailViewController: BaseViewController, PhotoDetailViewInput {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var profileImageView: ProfileImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
  
    @IBOutlet weak var likeView: UIView!
    @IBOutlet weak var viewsView: UIView!
    @IBOutlet weak var downloadView: UIView!

    @IBOutlet weak var numberOfLikeLabel: UILabel!
    @IBOutlet weak var numberOfViewLabel: UILabel!
    @IBOutlet weak var numberOfDownloadsLabel: UILabel!
    
    var viewOutput: PhotoDetailViewOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutput?.viewDidLoad()
    }

    func showPhotoDetail(photo: Photo) {
        guard let url = URL(string: photo.url?.raw ?? "") else { return }
        imageView?.kf.setImage(with: url)
        profileImageView.configureView(url: URL(string: photo.user?.profileImage.url ?? ""))
        
        profileLabel.text = " " + (photo.user?.name ?? "")
        profileLabel.apply(with: .xxl, fontType: .medium)
        
        descriptionLabel.text = photo.description ?? photo.altDescription
        descriptionLabel.apply(with: .xl)
        
        if let numberOfDownloads = photo.numberOfDownloads {
            numberOfDownloadsLabel.apply(with: .l)
            numberOfDownloadsLabel.text = "\(numberOfDownloads)"
        } else {
            downloadView.removeFromSuperview()
        }
        
        if let numberOfLikes = photo.numberOfLikes {
            numberOfLikeLabel.apply(with: .l)
            numberOfLikeLabel.text = "\(numberOfLikes)"
        } else {
            likeView.removeFromSuperview()
        }
        
        if let numberOfViews = photo.numberOfViews {
            numberOfViewLabel.apply(with: .l)
            numberOfViewLabel.text = "\(numberOfViews)"
        } else {
            numberOfViewLabel.removeFromSuperview()
        }
       
    }

}
