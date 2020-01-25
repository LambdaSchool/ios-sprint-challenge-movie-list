//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Nichole Davidson on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol  MovieAddedDelegate {
    
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: MovieAddedDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieTapped(_ sender: UIButton) {
        
        guard let movieName = addMovieTextField.text,
        let addMovie = addMovieTextField.text,
            !addMovie.isEmpty else { return }
        
        var movie = Movie(name: movieName)
        
        if let addMovie = addMovieTextField.text,
            !addMovie.isEmpty {
            movie.name.append(addMovie)
        }
        
        delegate?.movieWasAdded(movie)
     
        if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }
    }
    
}

    extension AddMovieViewController: UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
               if let text = textField.text,
                   !text.isEmpty {
                   switch textField {
                   case addMovieTextField:
                        textField.resignFirstResponder()
                   default:
                       textField.resignFirstResponder()
                   }
               }

               return false
        }
}
    


