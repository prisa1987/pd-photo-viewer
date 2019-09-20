
import Foundation
import IGListKit

class FeedAdapter: NSObject, ListAdapterDataSource {
    
    var delegate: PhotoCellDelegate?
    public var datas = [ListDiffable]()

    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return datas
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return PhotoSectionController(photoViewModels: object as! PhotoViewModels, delegate: delegate)
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
    
}

public class PhotoViewModels:NSObject, ListDiffable {
    let photos: [PhotoViewModel]
    
    init(photos: [PhotoViewModel]) {
        self.photos = photos
    }
    public func diffIdentifier() -> NSObjectProtocol {
        return self as NSObject
    }
    
    public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return true
    }
}

public class PhotoViewModel: NSObject {
    let id: String
    let name: String
    let url: String
    
    init(id: String, name: String, url: String) {
        self.id = id
        self.name = name
        self.url = url
    }

}
