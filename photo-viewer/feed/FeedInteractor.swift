
import Foundation

protocol FeedInteractorInput: class {
    func fetchPhotoFeed() -> [Photo]
}


class FeedInteractor: FeedInteractorInput {

    func fetchPhotoFeed() -> [Photo] {
        let photo1 = Photo(name: "image A",
                           url: "https://wallpaperbro.com/img/227839.jpg")
        
        let photo2 = Photo(name: "image B",
                           url:"https://wallpaperbro.com/img/227839.jpg")
        
        return [photo1, photo2, photo1, photo2, photo1, photo2, photo1, photo2, photo1, photo2]
    }
    
}

struct Photo {
    var name: String
    var url: String
}
