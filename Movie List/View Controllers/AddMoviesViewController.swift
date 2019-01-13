//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Stuart on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMoviesViewController: UIViewController {
    
    // Large Titles
    override func viewDidLoad() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // IBActions
    @IBAction func add(_ sender: Any) {
        guard let title = textField.text, !title.isEmpty else { return }
        
        MovieController.shared.createMovie(title: title)

        textField.text = nil
    }
    
    // IBOutlets
    @IBOutlet weak var textField: UITextField!
}
