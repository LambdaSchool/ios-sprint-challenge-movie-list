//
//  EntryViewController.swift
//  Movie List
//
//  Created by Yvette Zhukovsky on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController  {
    
    
   
  
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var addbutton: UIButton!
    
    
    
    @IBAction func addMovie(_ sender: Any) {
        
        
    }
 let userDefaults = UserDefaults.standard
    var indexPath: IndexPath? = nil
    
    @objc
    func addEntry() {
        if let text = textField.text, !text.isEmpty {
            let entry = Movies(movie: text, watched: false )
            Model.shared.items.append(entry)
        }
        navigationController?.popViewController(animated: true)
    }
    @objc
    func saveEntry() {
        
        guard let indexPath = indexPath else {
            fatalError("Failed to unwrap guaranteed indexPath")
        }
        
        if let text = textField.text, !text.isEmpty {
            let entry = Movies(movie: text, watched: false )
            Model.shared.items[indexPath.row] = entry
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let indexPath = indexPath {
            assert(indexPath.row < Model.shared.items.count, "Out of range indexPath")
            
            let entry = Model.shared.items[indexPath.row]
            textField.text = entry.movie
            
        }
        }
        
        
        
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
        
    
    
    
    
    
    
    
}




