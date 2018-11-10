import Foundation
import UIKit

class Model {
    static let shared = Model()
    private init() {}
    
    private var movies: [String] = []

    func itemCount() -> Int {
        return movies.count
    }
    
    func addMovie(_ movie: String) {
        movies.append(movie)
        saveData()
 }
    
    func removeMovie(at index: Int) {
        movies.remove(at: index)
        saveData()
    }
    
    func item(at index: Int) -> String {
        return movies[index]
    }

    func moveItem(from index: Int, to destinatonIndex: Int) {
        let item = movies.remove(at: index)
        movies.insert(item, at: destinatonIndex)
        saveData()
    }
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("ToDo")
        .appendingPathExtension("plist")
    
    func saveData() {
        try! (movies as NSArray).write(to: fileURL)
    }
    
    func loadData() {
        if let movies = NSArray(contentsOf: fileURL) as? [String] {
            self.movies = movies
        }
    
    
}

}

