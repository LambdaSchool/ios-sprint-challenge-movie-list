import UIKit

struct Movie: Equatable {
    var movie: String
    var hasBeenSeen: Bool = false
    
    init(movie: String) {
        self.movie = movie
    }
}
