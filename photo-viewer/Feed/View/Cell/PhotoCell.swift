
import UIKit
import Kingfisher

class PhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var delegate: PhotoCellDelegate?
    static var identifier: String = "PhotoCell"
    
    var id: String?
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: size().width).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: size().height).isActive = true
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(tapImage))
        addGestureRecognizer(tapGesture)
    }

    func size() -> CGSize {
        let width = (UIScreen.main.bounds.width - 12 - 4)/2
        return CGSize(width: width, height: width)
    }
    
    func configure(object: CellViewModel) {
        guard let cellViewModel = object as? PhotoCellViewModel else { return }
        let url = URL(string:  cellViewModel.url)
        imageView.kf.setImage(with: url)
        id = cellViewModel.id
    }
    
    @objc func tapImage() {
        print("s")

        if let photoId = id {
            delegate?.didTapPhoto(id: photoId)
        }
    }
    
}

protocol PhotoCellDelegate {
    func didTapPhoto(id: String)
}
