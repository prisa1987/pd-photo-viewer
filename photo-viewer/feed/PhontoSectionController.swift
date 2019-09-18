
import Foundation
import IGListKit

class PhotoSectionController: ListSectionController {
    
    override func numberOfItems() -> Int {
        return  2
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        let cell = collectionContext!.dequeueReusableCell(withNibName: "PhotoCell",
                                                          bundle: nil,
                                                          for: self,
                                                          at: index)
        return (cell as? PhotoCell)?.size() ?? CGSize.zero
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext!.dequeueReusableCell(withNibName: "PhotoCell",
                                                          bundle: nil,
                                                          for: self,
                                                          at: index)
        return cell
    }
    
    
}

