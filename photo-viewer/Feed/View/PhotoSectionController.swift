
import Foundation
import IGListKit

class PhotoSectionController: ListSectionController {
    
    let photoViewModels: PhotoViewModels
    var delegate: PhotoCellDelegate?
    
    init(photoViewModels: PhotoViewModels, delegate: PhotoCellDelegate?) {
        self.photoViewModels = photoViewModels
        self.delegate = delegate
    }

    override func numberOfItems() -> Int {
        return photoViewModels.photos.count
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        let cell = photoCell(index: index
        )
        return (cell as? PhotoCell)?.size() ?? CGSize.zero
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = photoCell(index: index)
        let photo = photoViewModels.photos[index]
        let cellViewModel = PhotoCellViewModel(id: photo.id,
                                               url: photo.url)
        (cell as? PhotoCell)?.configure(object: cellViewModel)
        (cell as? PhotoCell)?.delegate = delegate
        return cell
    }

    func photoCell(index: Int) -> UICollectionViewCell {
        return collectionContext!.dequeueReusableCell(withNibName: PhotoCell.identifier,
                                                      bundle: nil,
                                                      for: self,
                                                      at: index)
    }
    
}

