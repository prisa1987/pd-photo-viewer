
import Foundation
import IGListKit

class PhotoSectionController: ListSectionController {
    
    override func numberOfItems() -> Int {
        return  2
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext!.dequeueReusableCell(of: PhotoCell.self,
                                                         for: self,
                                                         at: index)
           
        return cell
    }
    
    
}

