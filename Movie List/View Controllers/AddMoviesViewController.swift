//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Dustin Koch on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMoviesViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func addMovieButton(_ sender: UIButton) {
        
        guard let text = textField.text, !text.isEmpty else { return }
        
        Model.shared.addMovie(text)
        
        textField.text = nil
        
    }
    
    @IBOutlet weak var newMovieLabel: UILabel!
    
}
