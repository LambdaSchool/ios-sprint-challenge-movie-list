import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    // This is private information internal to the model
    private var movielist: [String] = []
    
    // This is a public API
    func itemCount() -> Int {
        return movielist.count
    }
    
    // This is a public API  This is a lookup method
    func item(at index: Int) -> String {
        return movielist[index]
    }
    
    // This is a public API
    func addValue(_ value: String) {
        movielist.append(value)
        saveData()
    }
    
    // This is a public API
    func removeValue(at index: Int) {
        movielist.remove(at: index)
        saveData()
    }
    
    //This is a quick and dirty to pupulate a file
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("Movies")
        .appendingPathExtension("plist")
    
    // We can do this because it's an array of strings. We can't do this
    // generally with more sophisticated types. Plus, this does a bunch
    // of things that aren't exactly great: converting to the NSArray type,
    // and doing a "force try". So good for this example, not for production code.
    func saveData() {
        try! (movielist as NSArray).write(to: fileURL) // this is generally bad
    }
    
    // Same caveats here. And you must hook this up somewhere, so put it into your
    // App delegate.
    func loadData() {
        if let items = NSArray(contentsOf: fileURL) as? [String] {
            movielist = items
        }
    }
    
    func moveItem(at index: Int, to newIndex: Int) {
        let movie = movielist.remove(at: index)
        movielist.insert(movie, at: newIndex)
        saveData()
    }
}


//The internals are protected within the Model class

//Any method that indexes the array may cause an out of bounds error.  Add validation code

