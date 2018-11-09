import Foundation
import UIKit

class Model {
    static let shared = Model()
    private init() {}
    
    private var movies: [String] = []

    func itemCount() -> Int {
        return movies.count
    }
    
    func addMovie(_ movie: String) {
        movies.append(movie)
 }
    
    func removeMovie(at index: Int) {
        movies.remove(at: index)
    }
    
    func item(at index: Int) -> String {
        return movies[index]
    }

}

