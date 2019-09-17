
import Foundation
import IGListKit

class PhotoSectionController: ListSectionController {
    
    override func numberOfItems() -> Int {
        return  1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: 20, height: 20)
    }
    
}
