//
//  NewMovieViewController.swift
//  Movie List
//
//  Created by Nonye on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movies)
}

class NewMovieViewController: UIViewController {
    
var delegate: AddMovieDelegate?
    

@IBOutlet weak var movieTextField: UITextField!
    
    
@IBAction func addMovieTapped(_ sender: Any) {
     //help

guard let unwrappedMovie = movieTextField?.text else {
dismiss(animated: true, completion: nil)
return }
    delegate?.movieWasAdded(Movies(movieName: unwrappedMovie, movieSeen: false))
    navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
    super.viewDidLoad()
 
    }
}

extension NewMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
