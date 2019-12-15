import Foundation

class Model {
    static let shared = Model()
    private init() {}
    private var movieNames: [String] = []
    
    func addMovieNames(_ movieName: String) {
        movieNames.append(movieName)
        saveData()
    }
    
    func removeMovieNames(at index: Int) {
        movieNames.remove(at: index)
        saveData()
    }
    
    func moveMovieNames(from index: Int, to destinationIndex: Int) {
        let movieName = movieNames.remove(at: index)
        movieNames.insert(movieName, at: destinationIndex)
        saveData()
    }
    
    func movieNamesCount() -> Int {
        return movieNames.count
    }
    
    func movieName(at index: Int) -> String {
        return movieNames[index]
    }
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("ToDo")
        .appendingPathExtension("plist")
    
    func saveData() {
        try! (movieNames as NSArray).write(to: fileURL)
    }
    
    func loadData() {
        if let movieNames = NSArray(contentsOf: fileURL) as? [String] {
            self.movieNames = movieNames
        }
    }
}
