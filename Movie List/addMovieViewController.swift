
//  addMovieViewController.swift
//  Movie List
//  Created by Osha Washington on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.


import UIKit

protocol AddMovieDelegate: class {
    func movieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    
    @IBOutlet var movieTextField: UITextField!
    
    weak var delegate: AddMovieDelegate?
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        guard let title = movieTextField.text,
            !title.isEmpty else { return }
        
        let movie = Movie(movieName: title, seen: false)
        
        delegate?.movieWasCreated(movie)
   navigationController?.popViewController(animated: true)
    }
}
