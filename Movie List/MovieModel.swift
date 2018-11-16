import Foundation
import UIKit

class MovieModel {
    
    static let shared = MovieModel()
    private init() {}
    
    // considering using a dictionary to hold "seen/not seen for each movie if I can get to stretch
    
    private var movies: [String] = []
    
    // need functions to:
    // return count of items for table view
    // view, add, remove, and move functions -- stretch: seen/unseen? and editMovieName function
    // for persistence, need save function to file system

    
    // COUNT
    func movieCount() -> Int {
        return movies.count
    }
    
    // VIEW
    func movie(at index: Int) -> String {
        return movies[index]
    }
    
    // ADD + SAVE
    func addMovie(_ movie: String) {
        movies.append(movie)
 
        
    }
    
    // REMOVE + SAVE
    func removeMovie(at index: Int) {
        movies.remove(at: index)
        
        
    }
    
    // MOVE + SAVE
    func moveMovie(from index: Int, to newIndex: Int) {
        let movie = movies.remove(at: index)
        movies.insert(movie, at: newIndex)
        
        
    }
    
    // SAVE and LOAD from DISK
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("Movies")
        .appendingPathComponent("plist")

    func saveData() {
        try! (movies as NSArray).write(to: fileURL)
    }
    
    func loadData() {
        if let movies = NSArray(contentsOf: fileURL) as? [String] {
            self.movies = movies
        }
    }
    
    
    
    
    
    
    
}
