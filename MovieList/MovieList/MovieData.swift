import UIKit

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var movies: [String] = []
    
    
    //Reset the items array
    func resetMovieList() {
        movies = []
    }
}
