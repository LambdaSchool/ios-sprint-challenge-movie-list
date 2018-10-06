import UIKit

struct Movie: Equatable {
    let name: String
    var hasBeenSeen: Bool
    
    init(name: String, hasBeenSeen: Bool = false) {
        self.name = name
        self.hasBeenSeen = hasBeenSeen
    }
}
