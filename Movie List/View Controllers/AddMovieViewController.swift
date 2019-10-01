//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by J-Skenandore on 9/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded (_ movieInstance: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        guard let movieTitle = addMovieTextField.text,
            !movieTitle.isEmpty else { return }
        
        let movieInstance = Movie(name: movieTitle)
        
        delegate?.movieWasAdded(movieInstance)
    }
}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text, !text.isEmpty {
            textField.resignFirstResponder()
        }
        return false
    }
}
