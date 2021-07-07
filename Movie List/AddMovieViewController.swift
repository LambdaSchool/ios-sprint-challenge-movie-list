//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by macbook on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    var delegate: AddMovieDelegate?
    
    //var newMovie: Movie?

    
    @IBOutlet weak var movieTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    // TODO : - Configure AddMovieTapped
    
    @IBAction func addMovieTapped(_ sender: Any) {
        
        guard let movieTitle = movieTextField.text else { return }
        var movie = Movie(name: movieTitle, hasBeenSeen: false)
        
        delegate?.movieWasAdded(movie)

    }
}

