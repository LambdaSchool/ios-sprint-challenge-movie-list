import UIKit

class MovieData {
    static let shared = MovieData()
    private init() {}
    
    private(set) var movies: [String] = []
    
    
    //Reports how many rows
    func itemCount() -> Int {
        return movies.count
    }
    
    //Crud
    func addMovie(_ movie: String) {
        movies.append(movie)
        saveData()
    }
    
    //cRud
    func title(at index: Int) -> String {
        return movies[index]
    }
    
    //cruD
    func removeMovie (at index: Int) {
        movies.remove(at: index)
        saveData()
    }
    
    func moveMovie(from index: Int, to newIndex: Int) {
        let movie = movies.remove(at: index)
        movies.insert(movie, at: newIndex)
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
