//
//  MovieViewController.swift
//  MovieList
//
//  Created by Rohan Taylor on 12/13/19.
//  Copyright © 2019 Rohan Taylor. All rights reserved.
//

import UIKit


protocol MovieDelegate {
    
    func newMovie (movie: Movie)
}

class MovieViewController: UIViewController {
    
    var delegate: MovieDelegate?
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBAction func addNewMovieTapped(_ sender: Any) {
        if let titleTextField = titleTextField.text,
            !titleTextField.isEmpty {
            let movie = Movie(name: titleTextField, beenSeen: false)
            
            delegate?.newMovie(movie: movie)
            
            navigationController?.popViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.delegate = self
    }
}

extension MovieViewController: UITextFieldDelegate {
    func textFieldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
