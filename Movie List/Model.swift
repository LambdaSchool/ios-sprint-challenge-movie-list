

import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    // Create the array of strings that holds the user's input
    private var items: [String] = []
    
    // add another string to the items array
    func addItem(_ item: String) {
        items.append(item)
    }
    
    // ability to remove items according to their index
    func removeItem(at index: Int) {
        items.remove(at: index)
        saveData()
    }
    
    // return number of items entered into the array
    func itemCount() -> Int {
        return items.count
    }
    
    // return the string located at the index given
    func item(at index: Int) -> String {
        return items[index]
    }
    
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("ToDo")
        .appendingPathExtension("plist")
    
    func saveData() {
        try! (items as NSArray).write(to: fileURL)
    }
    
    func loadData() {
        if let items = NSArray(contentsOf: fileURL) as? [String] {
            self.items = items
        }
    }
}
