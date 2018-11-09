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
    
    func removeMovie(at index: Int) {
        movies.remove(at: index)
        saveData()
    }
    
    func moveMovie(at index: Int, to newIndex: Int){
        let movie = movies.remove(at: index)
        movies.insert(movie, at: newIndex)
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
            let _ = movies
        }
    }
}
