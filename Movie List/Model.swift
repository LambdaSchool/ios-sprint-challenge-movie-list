import Foundation

class Model {
    static let shared = Model()
    private init() {}
    private var items: [String] = []
    
    func addItem(_ item: String) {
        items.append(item)
    }
    
    func itemCount() -> Int {
        return items.count
    }
    
    func item(at index: Int) -> String {
        return items[index]
    }
}
