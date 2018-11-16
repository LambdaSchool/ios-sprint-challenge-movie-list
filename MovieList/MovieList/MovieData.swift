import UIKit

class MovieData {
    static let shared = MovieData()
    private init() {}
    
    private(set) var movies: [String] = []
    
    //Crud
    func addMovie(_ movie: String) {
        movies.append(movie)
        saveData()
    }
    
    //cruD
    func resetMovieList() {
        movies = []
    }
    
    
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("Animals")
        .appendingPathExtension(".pList")
    
    func saveData() {
        try! (movies as NSArray).write(to: fileURL)
    }
    
    func loadData() {
        if let items = NSArray(contentsOf: fileURL) as? [String] {
            movies = items
        }
    }
}
