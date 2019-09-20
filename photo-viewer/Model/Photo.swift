
import Foundation

struct Photo: Codable {
    var id: String
    var name: String?
    var url: PhotoURLType?
    
    init(id: String, name: String?, url: PhotoURLType?) {
        self.id = id
        self.name = name
        self.url = url
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "alt_description"
        case url = "urls"
    }
}
