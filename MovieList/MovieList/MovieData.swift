import UIKit

class MovieData {
    static let shared = MovieData()
    private init() {}
    
    private(set) var moviesList: [String] = []
    
    
    //Reports how many rows
    func titleCount() -> Int {
        return moviesList.count
    }
    
    //Crud
    func addMovie(_ movie: String) {
        moviesList.append(movie)
        saveData()
    }
    
    //cRud
    func itemTitle(at index: Int) -> String {
        return moviesList[index]
    }
    
    //cruD
    func removeMovie (at index: Int) {
        moviesList.remove(at: index)
        saveData()
    }
    
    func moveMovie(from index: Int, to newIndex: Int) {
        let movie = moviesList.remove(at: index)
        moviesList.insert(movie, at: newIndex)
        saveData()
    }
    
    //cruD
    func resetMovieList() {
        moviesList = []
        saveData()
    }
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("Animals")
        .appendingPathExtension(".pList")
    
    func saveData() {
        try! (moviesList as NSArray).write(to: fileURL)
    }
    
    func loadData() {
        if let items = NSArray(contentsOf: fileURL) as? [String] {
            moviesList = items
        }
    }
}
