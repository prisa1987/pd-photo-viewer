
import Foundation

class FeedRepository {
    
    let webServices: WebServices
    
    init(webServices: WebServices) {
        self.webServices = webServices
    }
    
    func callPhotoFeed(completion: ((_ photos: [Photo]) -> Void)?) {
        webServices.performNetworkTask(
            endpoint: .photos,
            type: [Photo].self
        ){ (response) in
            completion?(response)
            
        }
    }
}
