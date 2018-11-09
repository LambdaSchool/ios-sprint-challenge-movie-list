import UIKit

class Model {
    
    static let shared = Model()
    private init() {}
    
    private var movieList: [String] = ["k", "p"]
    
    func addMovie(_ movie: String) {
        movieList.append(movie)
        print(movieList)
        
    }
    
    func removeMovie(index: Int) {
        movieList.remove(at: index)
    }
    
    func numberOfMovies() -> Int {
        print(movieList.count)
        return (movieList.count)

    }

    func movie(index: Int) -> String {
        return movieList[index]
    }
    
}
