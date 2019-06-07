//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Alex Shillingford on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit



class AddMovieViewController: UIViewController {
    
    var movieController: MovieController?
    @IBOutlet weak var movieTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let movieController = movieController,
            let unwrappedTextField = movieTextField.text else { return }
        
        if unwrappedTextField != "" {
            movieController.createMovie(title: unwrappedTextField)
        } else {
            movieTextField.text = "Not a valid input"
        }
        
        navigationController?.popViewController(animated: true)
    }
}
