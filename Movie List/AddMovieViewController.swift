//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_254 on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieCancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addMovieSaveButton(_ sender: UIBarButtonItem) {
        
        guard let movieTitle = addMovieTextField.text,
            !movieTitle.isEmpty else { return }
        
        let movie = Movie(movieTitle: movieTitle)
        
        delegate?.movieWasAdded(movie)
        
    
}
}

/* extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text,
            !text.isEmpty {
            switch textField {
            case addMovieTextField:
                addMovieTextField.becomeFirstResponder()
            default:
                textField.resignFirstResponder()
            }
        }
        
        return false
    }
} */
