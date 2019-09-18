
import Foundation

protocol FeedInteractorInput: class {
    func fetchPhotoFeed() -> [Photo]
}


class FeedInteractor: FeedInteractorInput {

    func fetchPhotoFeed() -> [Photo] {
        let photo1 = Photo(name: "image A",
                           url: "https://images.forwardcdn.com/image/720x/center/images/cropped/axe-1531828722.jpg")
        
        let photo2 = Photo(name: "image B", url: "https://www.independent.co.uk/travel/natural-wonders-travel-lifetime-beautiful-a7866261.html")
        
        return [photo1, photo2, photo1, photo2, photo1, photo2, photo1, photo2, photo1, photo2]
    }
    
}

struct Photo {
    var name: String
    var url: String
}
