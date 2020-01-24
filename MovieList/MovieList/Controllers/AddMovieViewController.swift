//
//  AddMovieViewController.swift
//  MovieList
//
//  Created by Nick Nguyen on 1/24/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit

protocol AddMovieViewControllerDelegate {
    func didAddMovie(for movie: String)
}

class AddMovieViewController: UIViewController , UITextFieldDelegate {

     var movie  = ""
     var delegate : AddMovieViewControllerDelegate?
    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var addMovieButton: UIButton!
    @IBOutlet weak var movieTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTextField.becomeFirstResponder()
        addMovieButton.isEnabled = false
        movieTextField.delegate = self
        
    }
    
    @IBAction func textFieldDidChange(_ sender: UITextField) {
        addMovieButton.isEnabled = movieTextField.hasText
        addMovieButton.backgroundColor = addMovieButton.isEnabled ? UIColor.systemBlue : UIColor.systemRed
       
    }
    
  
    @IBAction func addMovieTapped(_ sender: UIButton) {
      
            if let newMovie = movieTextField.text {
                movie = newMovie
        }
        
      
        delegate?.didAddMovie(for: movie)
        navigationController?.popViewController(animated: true)
    }
    
}
