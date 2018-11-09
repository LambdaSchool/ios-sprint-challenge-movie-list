import UIKit
import Foundation

class Model {
    
    static let shared = Model()
    private init(){}
    
    private var movies: [String] = ["Fight Club", "Free Willy", "Jaws"]
    
    func addMovie(_ movie: String){
        movies.append(movie)
        saveData()
    }
    
    func removeMovie(at index: Int) {
        movies.remove(at: index)
        saveData()
    }
    
    func moveMovie(from index: Int, to destinationIndex: Int) {
        let movie = movies.remove(at: index)
        movies.insert(movie, at: index)
        saveData()
    }
    
    func movieCount() -> Int {
        return movies.count
    }
    
    func movie(at index: Int) -> String {
        return movies[index]
    }
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("Movies")
        .appendingPathExtension("plist")
    
    func saveData() {
        try! (movies as NSArray).write(to: fileURL)
        //print(fileURL)
    }
    
    func loadData() {
        if let movies = NSArray(contentsOf: fileURL) as? [String] {
            self.movies = movies
            
        }
    }
}
