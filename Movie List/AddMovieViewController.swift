//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Benjamin Hakes on 11/9/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

// view controller for add movies view
class AddMovieViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    // on add movie button press
    @IBAction func addMovie(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else {return}
        
        Model.shared.addItem(text) // add to the model
        textField.text = nil // remove the entry from the text field
        
    }
    
    // make sure to load previously saved data
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        Model.shared.loadData()
        
    }
}
