import Foundation

class Model {
    static let shared = Model()
   
    private init(){}
    
    private var items: [String] = []
    
    func addItem(_ item: String) {
        items.append(item)
        saveData()
    }
    
    func itemCount() -> Int {
        return items.count
    }
    
    func item(at index: Int) -> String {
        return items[index]
    }
    
    func removeValue(at index: Int) {
        items.remove(at: index)
        saveData()
    }
    
    func saveData() {
        try? (items as NSArray).write(to: fileURL)
    }
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
    .appendingPathComponent("Library")
    .appendingPathComponent("ToDo")
    .appendingPathExtension("plist")
    

    func moveItem(from index: Int, to destinationIndex: Int) {
        let item = items.remove(at: index)
        items.insert(item, at: destinationIndex)
        saveData()
    }
    
    func loadData() {
        if let items = NSArray(contentsOf: fileURL) as? [String] {
            self.items = items
        }
    }
}
