
import Foundation

protocol EndpointType {

    var baseURL: URL? { get }
    var path: String { get }

}

enum UnsplashAPI {
    case photos
    case photo(String)
}

extension UnsplashAPI: EndpointType {
    var baseURL: URL? {
        return URL(string: "https://api.unsplash.com/")
    }

    var path: String {
        switch self {
        case .photos:
            return "photos"
        case .photo(let id):
            return "photos/" + id
        }
    }
}
