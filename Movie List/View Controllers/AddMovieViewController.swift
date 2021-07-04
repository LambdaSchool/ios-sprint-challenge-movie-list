//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Michael Flowers on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovieButton(_ sender: UIButton) {
        //check to see if there's text in the textfield
        guard let text = movieTextField.text, !text.isEmpty else { return }
        
        //add movie to array
        MovieController.shared.addMovie(with: text)
        
        //clear textField
        movieTextField.text = nil
        
        //dismiss keyboard
        movieTextField.resignFirstResponder()
        
    }
    
    //dismiss the keyboard when user touches outside of the textField
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        movieTextField.resignFirstResponder()
    }

}
