
import Foundation
import IGListKit

class PhotoSectionController: ListSectionController {
    
    let photoViewModels: PhotoViewModels
    init(photoViewModels: PhotoViewModels) {
        self.photoViewModels = photoViewModels
    }

    override func numberOfItems() -> Int {
        return photoViewModels.photos.count
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        let cell = photoCell(index: index)
        return (cell as? PhotoCell)?.size() ?? CGSize.zero
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = photoCell(index: index)
        let photo = photoViewModels.photos[index]
        let cellViewModel = PhotoCellViewModel(name: photo.name, url: photo.url)
        (cell as? PhotoCell)?.configure(object: cellViewModel)
        return cell
    }
    
    func photoCell(index: Int) -> UICollectionViewCell {
        return collectionContext!.dequeueReusableCell(withNibName: PhotoCell.identifier,
                                                      bundle: nil,
                                                      for: self,
                                                      at: index)
    }
    
    
}

