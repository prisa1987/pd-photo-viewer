
import UIKit
import Kingfisher

class PhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: size().width).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: size().height).isActive = true
        let url = URL(string: "https://wallpaperbro.com/img/227839.jpg")
        imageView.kf.setImage(with: url)
        
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
    }

    func size() -> CGSize {
        let width = (UIScreen.main.bounds.width - 12 - 4)/2
        return CGSize(width: width, height: width)
    }
}
