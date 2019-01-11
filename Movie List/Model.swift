import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var movies: [String] = []
    
    func addMovie(_ movie: String) {
        movies.append(movie)
    }
    
    func deleteMovie(at index: Int) {
        movies.remove(at: index)
    }
    
    func moveMovie() {
        
    }
}
