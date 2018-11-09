import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    private var movies: [String] = []
    
    //returns all movies in array
    func movieCount() -> Int {
        return movies.count
    }
    
    //add movies to array
    func addMovie(_ movie: String) {
        movies.append(movie)
        saveData()
    }
    
    //returns movie at specific index
    func movie(at index: Int) -> String {
        return movies[index]
    }
    
    //removes movie from array at specific index
    func removeMovie(at index: Int) {
        movies.remove(at: index)
        saveData()
    }
    
    //allows you to move movie around
    func moveMovie(at index: Int, to newIndex: Int){
        let movie = movies.remove(at: index)
        movies.insert(movie, at: newIndex)
        saveData()
        
    }
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("Films")
        .appendingPathExtension("plist")
    
    //how we are saving the movie titles entered on app
    func saveData() {
        try! (movies as NSArray).write(to: fileURL)
    }
    
    //loads what is saved
    func loadData() {
        if let movies = NSArray(contentsOf: fileURL) as? [String] {
            let _ = movies
        }
    }
}
