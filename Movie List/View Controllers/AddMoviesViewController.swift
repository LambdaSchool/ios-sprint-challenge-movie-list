//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Stuart on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMoviesViewController: UIViewController {
    
    // Large Title
    override func viewDidLoad() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // IBActions & Logic
    @IBAction func add(_ sender: Any) {
        guard let title = textField.text, !title.isEmpty else { return }
        
        MovieController.shared.createMovie(title: title)

        textField.text = nil
    }
    
    // IBOutlets & Properties
    @IBOutlet weak var textField: UITextField!
}
