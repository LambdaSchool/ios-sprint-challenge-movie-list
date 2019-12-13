//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Tobi Kuyoro on 13/12/2019.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func addNewMovie(movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBAction func addNewMovieTapped(_ sender: Any) {
        if let titleTextField = titleTextField.text,
            !titleTextField.isEmpty {
            let movie = Movie(name: titleTextField, hasBeenSeen: false)
            
            delegate?.addNewMovie(movie: movie)
            
            navigationController?.popViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.delegate = self
    }
}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
