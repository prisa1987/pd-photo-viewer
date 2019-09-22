
import Foundation

struct Photo: Codable {
    var name: String?
    var url: PhotoURLType?
    
    init(name: String?, url: PhotoURLType?) {
        self.name = name
        self.url = url
    }
    
    enum CodingKeys: String, CodingKey {
        case name = "alt_description"
        case url = "urls"
    }
}
