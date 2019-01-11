import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var movies: [String] = []
    
    func addMovie(_ movie: String) {
        movies.append(movie)
        saveData()
    }
    
    func deleteMovie(at index: Int) {
        movies.remove(at: index)
        saveData()
    }
    
    func moveMovie(from index: Int, to destination: Int) {
        let value = movies.remove(at: index)
        movies.insert(value, at: destination)
        saveData()
    }
    
    func saveData() {
        try! (movies as NSArray).write(to: fileURL)
    }
    
    func loadData() {
        if let items = NSArray(contentsOf: fileURL) as? [String] {
        movies = items
        }
    }
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("Movies")
        .appendingPathExtension("plist")
}

