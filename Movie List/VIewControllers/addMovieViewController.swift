//
//  addMovieViewController.swift
//  Movie List
//
//  Created by admin on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieTableViewController: UIViewController {
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addMovieTextField.delegate = self
        
        
    }
    
    @IBAction func addMovieButton(_ sender: UIButton) {
        
        guard let movieTitle = addMovieTextField.text,
            !movieTitle.isEmpty else { return }
        
        var movie = Movie(title: movieTitle, seen: false)
        
        if let addedMovie = addMovieTextField.text, !addedMovie.isEmpty {
            movie.title.append(addedMovie)
        }
        
        delegate?.movieWasAdded(movie)
    }
    
    
}

extension AddMovieTableViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text, !text.isEmpty {
            
            textField.resignFirstResponder()
            
        }
        return true
    }
}
