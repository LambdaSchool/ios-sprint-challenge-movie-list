//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Vijay Das on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func addMovie(_ sender: UIButton) {
        guard let movie = textField.text, !movie.isEmpty else { return }
        MovieModelController.shared.addMovie(movie)
        textField.text = nil
        
    }
    

}
