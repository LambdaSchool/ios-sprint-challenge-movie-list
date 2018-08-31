//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Jason Modisett on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddNewMoviesViewController: UIViewController, MovieControllerProtocol {

    // IBActions & Logic
    @IBAction func submitMovie(_ sender: Any) {
        guard let title = titleTextField.text else { return }
        
        movieController?.createNewMovie(title: title)
        
        view.endEditing(true)
        
        let hapticFeedback = UIImpactFeedbackGenerator(style: .medium)
        hapticFeedback.impactOccurred()
    }
    
    
    // IBOutlets & Properties
    @IBOutlet weak var titleTextField: UITextField!
    
    var movieController: MovieController?
    
}
