//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by J-Skenandore on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movieInstance: Movie)
}

class AddMovieViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    // MARK: - Private Properties
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let movieTitle = addMovieTextField.text, !movieTitle.isEmpty else { return }
        
        let movieInstance = Movie(name: movieTitle)
        
        delegate?.movieWasAdded(movieInstance)
        self.dismiss(animated: true)
    }
}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text,
            !text.isEmpty {
            textField.resignFirstResponder()
        }
        return false
    }
}
