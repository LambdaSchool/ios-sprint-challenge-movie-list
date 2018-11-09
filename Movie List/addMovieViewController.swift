//
//  addMovieViewController.swift
//  Movie List
//
//  Created by Ivan Caldwell on 11/9/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class addMovieViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func add(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else {return}
        // add to model
        Model.shared.addMovie(text)
        
        // remove the entry from the text field
        textField.text = nil
        
        
    }
    
    
    
    
    
    
    
    
    
}
