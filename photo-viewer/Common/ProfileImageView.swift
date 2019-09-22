
import UIKit
import Kingfisher

class ProfileImageView: UIView {
    
    private var imageView: UIImageView?

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        let imageView = UIImageView()
        translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        imageView.layer.borderWidth = 3.0
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.clipsToBounds = true;
        imageView.contentMode = .scaleAspectFill

        self.imageView = imageView
    }
    
    func configureView(url: URL?, size: CGSize = CGSize(width: 50, height: 50)) {
        guard let imageView = imageView, let url = url else { return }
        imageView.kf.setImage(with: url)
        imageView.widthAnchor.constraint(equalToConstant: size.width).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: size.height).isActive = true
        imageView.layer.cornerRadius = size.width / 2
        
        widthAnchor.constraint(equalToConstant: size.width).isActive = true
    }
    
}
