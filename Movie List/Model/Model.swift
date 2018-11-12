import Foundation

class Model {
    
    static let shared = Model()
    private init() {}
    
    var movies: [String] = []
    
    var seen = false
    var edit = false
    
    func addMovie(_ movie: String) {
        movies.append(movie)
    }
    
    func deleteMovie(_ index: Int) {
        movies.remove(at: index)
    }
    
    func hasSeen() {
        seen.toggle()
    }
    
    func movieCount() ->Int {
        return movies.count
    }
    
    func movie(_ index: Int) ->String {
         return movies[index]
    }
    
    func moveMovie(_ sourceIndex: Int, destinationIndex: Int ) {
        let movie = movies.remove(at: sourceIndex)
        movies.insert(movie, at: destinationIndex)
    }
    
    func editMovie(movie: Int, _ index: Int) -> String {
        let movie = movies[index]
        movies.insert(movie, at: index)
        return movies[index]
    }
    
}
