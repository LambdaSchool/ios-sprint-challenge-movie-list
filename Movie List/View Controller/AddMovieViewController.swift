//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Blake Andrew Price on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
    }

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        guard let title = movieTitleTextField.text,
            !title.isEmpty else { return }
        
        var movie = Movie(movie: title, seenNotSeen: false)
        
        delegate?.movieWasCreated(movie)
    }
}
