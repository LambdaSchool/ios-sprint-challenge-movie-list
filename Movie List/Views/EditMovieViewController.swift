//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Joseph Rogers on 8/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol EditMovieDelegate {
    func movieWasCreated(_ movie: Movies)
    func movie(_ oldMovie: Movies, wasupdated newMovie: Movies)
}

class EditMovieViewController: UIViewController {
    //MARK: - Properties
    @IBOutlet weak var addMovieTextField: UITextField!
    //MARK: - Properties
    var delegate: EditMovieDelegate?
    var oldMovie: Movies?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addMovieTextField.delegate = self
        updateViews()
    }
    
    
    func updateViews() {
        guard let oldMovie = oldMovie else {return}
        addMovieTextField.text = oldMovie.name
    }
    //MARK: - IBActions
    @IBAction func saveTapped(_ sender: Any) {
        guard let name = addMovieTextField.text,
            !name.isEmpty else {return}
        let movieAdd = Movies(name: name)
        
        if let oldMovie = oldMovie {
            delegate?.movie(oldMovie, wasupdated: movieAdd)
        }
        else{
        delegate?.movieWasCreated(movieAdd)
    }
    }
}
    //MARK: - Extensions/Text Field Delegation
extension EditMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text,
            !text.isEmpty {
            resignFirstResponder()
        }
        return false
    }
}
