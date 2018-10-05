import UIKit

class MovieController {
    
    private (set) var movies: [Movie] = []
    
    func createMovie (name: String) {
        let movie = Movie(name: name, hasBeenSeen: false)
        movies.append(movie)
    }
    
    func update(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        
        let oldStatus = movie.hasBeenSeen
        let newStatus = !oldStatus
        let tempMovie = Movie(name: movie.name, hasBeenSeen: newStatus)
        
        movies.remove(at: index)
        movies.insert(tempMovie, at: index)
    }
    
    func deleteMovie(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        movies.remove(at: index)
    }
}
