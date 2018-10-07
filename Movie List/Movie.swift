import UIKit

struct Movie {
    let movie: String
    var haveSeen: Bool

    init(item: String, haveSeen: Bool = false) {
        self.movie = item
        self.haveSeen = haveSeen
    }
}

