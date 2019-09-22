
import Foundation

struct Photo: Codable {
    let id: String
    let url: PhotoURLType?
    let user: User?
    let description: String?
    let altDescription: String?
    let numberOfViews: Int?
    let numberOfDownloads: Int?
    let numberOfLikes: Int?
    
    
    init(id: String,
         url: PhotoURLType?,
         user: User?,
         description: String?,
         altDescription: String?,
         numberOfViews: Int?,
         numberOfDownloads: Int?,
         numberOfLikes: Int?
    ) {
        self.id = id
        self.url = url
        self.user = user
        self.description = description
        self.altDescription = altDescription
        self.numberOfViews = numberOfViews
        self.numberOfDownloads = numberOfDownloads
        self.numberOfLikes = numberOfLikes
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case url = "urls"
        case user
        case description
        case altDescription = "alt_description"
        case numberOfViews = "views"
        case numberOfDownloads = "downloads"
        case numberOfLikes = "likes"
    }
}
