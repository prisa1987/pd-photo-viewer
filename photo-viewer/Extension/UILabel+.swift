
import UIKit

extension UILabel {
    
    func apply(with fontSize: FontSize, fontType: FontWeight = .regular) {
        self.font = .systemFont(ofSize: fontSize.rawValue, weight: fontType.getWeight())
    }
}

