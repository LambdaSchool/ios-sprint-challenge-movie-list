//
//  AddMovieViewController.swift
//  MovieList
//
//  Created by Lisa Fisher on 8/3/19.
//  Copyright © 2019 Lisa Fisher. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addMovieTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        
        guard let name = addMovieTextField.text,
            !name.isEmpty else { return }
        
        let movie = Movie(name: name)
        
        delegate?.movieWasCreated(movie)
    }
}

extension AddMovieViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text, !text.isEmpty {
            switch textField {
            case addMovieTextField:
                addMovieTextField.becomeFirstResponder()
            default:
                textField.resignFirstResponder()
            }
        }
        
        return false
    }
}
