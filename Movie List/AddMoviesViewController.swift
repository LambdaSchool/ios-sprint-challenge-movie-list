//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Stuart on 11/16/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMoviesViewController: UIViewController {
    
    
    @IBOutlet weak var titleTextField: UITextField!
    
    
    @IBAction func submitMovie(_ sender: Any) {
        movieController?.addNewMovie(title: title)
        
        let hapticFeedback = UIImpactFeedbackGenerator(style: .medium)
        hapticFeedback.impactOccurred()
        
        titleTextField.text = ""
        
        view.endEditing(true)
    }
    
    var movieController: MovieController?
    
}
