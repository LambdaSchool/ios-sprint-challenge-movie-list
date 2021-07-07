import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    private var movies: [String] = []
    
    func movieCount() -> Int {
        return movies.count
    }
    
    func addMovie(_ movie: String) {
        movies.append(movie)
        saveData()
    }
    
    func movie(at index: Int) -> String {
        return movies[index]
    }
    
    func removeMovie(index: Int) {
        movies.remove(at: index)
        saveData()
    }
    
    func moveMovie (indexOrigin: Int, indexDestination: Int) {
        let value = movies.remove(at: indexOrigin)
        movies.insert(value, at: indexDestination)
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
        if let items = NSArray(contentsOf: fileURL) as? [String] {
            movies = items
        }
    }
}
