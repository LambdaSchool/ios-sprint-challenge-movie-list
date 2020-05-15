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
        
        if movieEntered.text == "" {
            movieEntered.placeholder = "Please Enter a Movie"
        } else {
            let newMovies = theMovies.append
            print("\(newMovies)")
            dismiss(animated: true, completion: nil)
        }
    }
}

