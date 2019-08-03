//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Dillon P on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var newMovieTextField: UITextField!
    
    // MARK: - Properties
    
    var delegate: AddMovieDelegate?
    
    // MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let newMovieName = newMovieTextField.text, !newMovieName.isEmpty else { return }
        let newMovie = Movie(name: newMovieName, seen: false)
        delegate?.movieWasAdded(newMovie)
    }
    

}

// MARK: - Extensions

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // resign first repsonder
        // addMovieTapped()
        return false
    }
}
