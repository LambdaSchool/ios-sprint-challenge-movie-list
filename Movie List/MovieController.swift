import Foundation

class MovieController {
    var movies = [Movie]()
    
    func create(name: String, isSeen: Bool) {
        let movie = Movie(name: name, isSeen: false)
        movies.append(movie)
    }
}
