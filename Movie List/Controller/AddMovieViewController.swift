//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jason Hoover on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//


import UIKit


protocol AddMovieDelegate {
    func movieCreated(newMovie: Movies)
}

class AddMovieViewController: UIViewController {
    
    
    @IBOutlet weak var movieEntered: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovie(_ sender: Any) {
        
        guard let title = movieEntered.text else { return }
        
        let newMovie = Movies(title: title, watched: false)
        
        delegate?.movieCreated(newMovie: newMovie)
        
        dismiss(animated: true, completion: nil)
        
    }
}

