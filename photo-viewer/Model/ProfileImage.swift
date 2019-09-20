
import Foundation

struct ProfileImage: Codable {
    let url: String
    
    init(url: String) {
        self.url = url
    }

    enum CodingKeys: String, CodingKey  {
        case url = "large"
    }
}
