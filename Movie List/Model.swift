import UIKit

class Model {
    
    static let shared = Model()
    
    private var movieList: [String] = []
    
    func addMovie(_ movie: String) {
        movieList.append(movie)
        
    }
    
    func removeMovie(index: Int) {
        movieList.remove(at: index)
    }
    
    func numberOfRows() -> Int {
        return (movieList.count - 1)
    }
    
    
    
    
}
