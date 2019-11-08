//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Patrick Millet on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    // MARK: Outelets and Actions
    @IBOutlet weak var movieTextField: UITextField!
    
    var movieDelegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieTextField.delegate = self as? UITextFieldDelegate
        
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        
        if let movieTitle = movieTextField.text, !movieTitle.isEmpty {
            
            var movie = Movie(name: movieTitle, hasSeen: false)
            movie.name = movieTitle
            movieDelegate?.movieWasAdded(movie: movie)
        }
    }
}
