//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Tobi Kuyoro on 08/11/2019.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(movie: Movie)
}

var addedMovies = MovieController()

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieNameLabel: UITextField!
    
    var delegate: AddMovieDelegate?
    var movieController: MovieController?

    override func viewDidLoad() {
        super.viewDidLoad()

//        movieNameLabel.delegate = self
    }
    
    @IBAction func addMovieTapped(_ sender: Any) {
        
        guard let movie = movieNameLabel.text,
            !movie.isEmpty else { return }
        
        let newMovie = Movie(name: movie)
        addedMovies.movie.append(newMovie)
        navigationController?.popViewController(animated: true)
        
        dismiss(animated: true, completion: nil)
        
    }
    
}


//extension AddMovieViewController: UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if let text = movieNameLabel.text, !text.isEmpty {
//            movieNameLabel.resignFirstResponder()
//        }
//        return true
//    }
//}
