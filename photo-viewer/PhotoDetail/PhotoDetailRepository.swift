
import Foundation


class PhotoDetailRepository  {
    
    let webServices: WebServices
    
    init(webServices: WebServices) {
        self.webServices = webServices
    }
    
    func callPhotoDetail(id: String, completion: ((_ photo: Photo) -> Void)?) {
        webServices.performNetworkTask(
            endpoint: .photo(id),
            type: Photo.self
        ){ (response) in
            completion?(response)
            
        }
    }
}

