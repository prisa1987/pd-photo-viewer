
import Foundation

struct Photo: Codable {
    let id: String
    let url: PhotoURLType?
    let user: User?
    let description: String?
    let altDescription: String?
    
    init(id: String, url: PhotoURLType?, user: User?, description: String?, altDescription: String?
    ) {
        self.id = id
        self.url = url
        self.user = user
        self.description = description
        self.altDescription = altDescription
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case url = "urls"
        case user
        case description
        case altDescription = "alt_description"
    }
}
