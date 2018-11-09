//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Benjamin Hakes on 11/9/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class AddMovieViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addMovie(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else {return}
        
        Model.shared.addItem(text) // add to the model
        textField.text = nil // remove the entry from the text field
        
        //tableView.insertRows(at: [IndexPath(row: Model.shared.itemCount() - 1, section: 0)], with: .top)
        
    }
}
