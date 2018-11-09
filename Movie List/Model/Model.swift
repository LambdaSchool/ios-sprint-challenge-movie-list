import Foundation

class Model {
    
    static let shared = Model()
    private init() {}
    
    var movies: [String] = []
    
    var seen = false
    
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
    
    
}
