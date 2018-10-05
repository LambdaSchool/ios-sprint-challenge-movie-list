import UIKit


class MovieController {
    
    var movies: [Movie] = []
    
    
    func addNewMovie(_ name: String, isSeen: Bool) -> Movie {
        
        let newMovie = Movie(name: name, isSeen: isSeen)
        movies.append(newMovie)
        return newMovie
    }
}
