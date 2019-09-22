
import Foundation

protocol EndpointType {

    var baseURL: URL? { get }
    var path: String { get }

}

enum UnsplashAPI {
    case photos

}

extension UnsplashAPI: EndpointType {
    var baseURL: URL? {
        return URL(string: "https://api.unsplash.com/")
    }

    var path: String {
        switch self {
        case .photos:
            return "photos"
        }
    }
}
