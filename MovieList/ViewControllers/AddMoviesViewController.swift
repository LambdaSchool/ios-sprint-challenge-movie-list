//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Gladymir Philippe on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol addMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMoviesViewController: UIViewController {
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: addMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let movieTitle = addMovieTextField.text, !movieTitle.isEmpty else { return }
        
        let movie = Movie(name: movieTitle)
        
        delegate?.movieWasAdded(movie)
        self.dismiss(animated: true)
    }
}

extension AddMoviesViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text,
            !text.isEmpty {
            textField.resignFirstResponder()
        }
        return false
    }
}
