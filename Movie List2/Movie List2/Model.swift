import UIKit

class Model {
    
    static let shared = Model()
    var movies : [String] = []
    
    func addMovie(movie: String) {
        movies.append(movie)
        Model.shared.saveData()
        
    }
    func movie(at index: Int) -> String {
        return movies[index]
    }
    
    func movieCount () -> Int {
        return movies.count
    }
    
    func removeMovie (index: Int) {
        movies.remove(at: index)
        Model.shared.saveData()
        
    }
    
    func moveMovie(origin: Int, destination: Int) {
        let moveMovie = movies.remove(at: origin)
        movies.insert(moveMovie, at: destination)
        Model.shared.saveData()
    }
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("Movies")
        .appendingPathExtension("plist")
    
    func saveData() {
        try! (movies as NSArray).write(to: fileURL)
    }
    
    func loadData() {
        if let items = NSArray(contentsOf: fileURL) as? [String] {
            movies = items
        }
    
    
}
}
