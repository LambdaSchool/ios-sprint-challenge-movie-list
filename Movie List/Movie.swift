import UIKit

struct Movie {
    let title: String
    var isSeen: Bool
    
    init(title: String, isSeen: Bool = false) {
        self.title = title
        self.isSeen = isSeen
    }
}
