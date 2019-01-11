import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var movies: [String] = []
    private(set) var movie: String
    
    func addMovie(_: movie) {
        movies.append(movie)
    }
    
    func deleteMovie() {
        
    }
}
