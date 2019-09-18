
import Foundation

class PhotoCellViewModel: CellViewModel {
    
    let name: String
    let url: String
    
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}
