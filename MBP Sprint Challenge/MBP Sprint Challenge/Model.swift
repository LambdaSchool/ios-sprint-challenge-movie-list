import UIKit

class Model {
    
    static let shared = Model()
    private init() {}
    
    private var movies: [String] = []
    
    
    func movieCount() -> Int {
        return movies.count
    }
    
    func movie(at index: Int) -> String {
        return movies[index]
    
    func addMovie(_ movie: String) {
        movies.append(movie)
    }
    
    
    func removeMovie(at index: Int) {
        movies.remove(at: index)
    }
    
        func moveMovie(from index: Int, to newIndex: Int) {
            let movie = movies.remove(at: index)
            movies.insert(movie, at: newIndex)
        }
}
