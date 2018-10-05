import UIKit

class MovieController {
    
    private (set) var movies: [Movie] = []
    
    func createMovie (withName movie: String) {
        let movie = Movie(movie: movie)
        movies.append(movie)
    }
}
