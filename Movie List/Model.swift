import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    private var items: [String] = []
    
    // load previously saved data
    func loadData() {
        if let items = NSArray(contentsOf: fileURL) as? [String] {
            self.items = items
        }
    }
    
    // public API
    func addItem(_ item: String) {
        items.append(item)
        saveData()
    }
    
    // public API
    func removeItem(at index: Int) {
        items.remove(at: index)
        saveData()
    }
    
    // public API
    func moveItem(from index: Int, to destinationIndex: Int) {
        let item = items.remove(at: index)
        items.insert(item, at: destinationIndex)
        saveData()
    }
    
    // public API
    func itemCount() -> Int {
        return items.count
    }
    
    // public API
    func item(at index: Int) -> String {
        return items[index]
    }
    
    // build filepath
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("Movies")
        .appendingPathExtension("plist")
    
    // save data to filepath
    func saveData() {
        try! (items as NSArray).write(to: fileURL)
    }
    
    
}
