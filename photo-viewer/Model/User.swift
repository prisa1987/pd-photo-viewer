
import Foundation

struct User: Codable {
    let id: String
    let name: String
    let profileImage: ProfileImage
    
    init(id:String, name: String, profileImage: ProfileImage) {
        self.id = id
        self.name = name
        self.profileImage = profileImage
    }

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case profileImage = "profile_image"
    }
}
