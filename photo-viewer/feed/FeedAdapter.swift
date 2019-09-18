
import Foundation
import IGListKit

class FeedAdapter: NSObject, ListAdapterDataSource {
    
    public var datas = [ListDiffable]()

    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return datas
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return PhotoSectionController()
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
    
}


public class PhotoViewModel: NSObject, ListDiffable {
    let name: String
    let url: String
    
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
    
    public func diffIdentifier() -> NSObjectProtocol {
        return self as NSObject
    }
    
    public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return true
    }

}
