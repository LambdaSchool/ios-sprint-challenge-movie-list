//
//  Model.swift
//  Movie List
//
//  Created by Stuart on 11/23/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("Movies")
        .appendingPathExtension("plist")
    
    
    func saveData() {
        try! (values as NSArray).write(to: fileURL)
    }
    
   
    func loadData() {
        if let items = NSArray(contentsOf: fileURL) as? [String] {
            values = items
        }
    }
    
    
    private var values: [String] = []
    
    
    func itemCount() -> Int {
        return values.count
    }
    
    
    func item(at index: Int) -> String {
        return values[index]
    }
    
    
    func addValue(_ value: String) {
        values.append(value)
        saveData()
    }
    
    
    func removeValue(at index: Int) {
        values.remove(at: index)
        saveData()
    }
    
    
    func moveItem(at index: Int, to newIndex: Int) {
        let value = values.remove(at: index)
        values.insert(value, at: newIndex)
        saveData()
    }
    
}
