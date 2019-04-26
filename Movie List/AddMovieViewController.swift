//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Mitchell Budge on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        if addMovieTextField.text != "" {
            movies.append(addMovieTextField.text!)
            addMovieTextField.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
}
