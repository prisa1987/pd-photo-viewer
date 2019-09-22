
import UIKit

enum FontSize: CGFloat {
    case xs = 8
    case s = 10
    case m = 12
    case l = 14
    case xl = 16
    case xxl = 18
}

enum FontWeight  {
    case light
    case regular
    case medium
    case bold
    
    func getWeight() -> UIFont.Weight {
        switch self {
        case .light: return UIFont.Weight.light
        case .regular: return UIFont.Weight.regular
        case .medium:  return UIFont.Weight.medium
        case .bold:  return UIFont.Weight.bold
        }
    }
    
}
