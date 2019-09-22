
import Foundation

class PhotoCellViewModel: CellViewModel {

    let id: String
    let url: String
    
    init(id: String, url: String) {
        self.id = id
        self.url = url
    }
}
