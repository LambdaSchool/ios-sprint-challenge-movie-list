//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Matthew Martindale on 2/8/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func addMovie(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    var movieDelegate: AddMovieDelegate?
    
    var movie: Movie? {
        didSet {
            updateView()
        }
    }
    
    
    @IBOutlet weak var movieButtonTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let movieTitleText = movieTitleTextField.text,
        !movieTitleText.isEmpty
            else { return }
        
        let movie = Movie(name: movieTitleText, hasBeenWatched: false)
        movieDelegate?.addMovie(movie)
        
        navigationController?.popViewController(animated: true)
        dismiss(animated: true)
    }
    
    private func updateView() {
        if let movie = movie {
            title = "Edit Movie"
            movieButtonTapped.setTitle("Save Movie", for: .normal)
            movieTitleTextField.text = movie.name
        } else {
            title = "Add a New Movie"
            movieButtonTapped.setTitle("Add Movie", for: .normal)
            movieTitleTextField.text = ""
        }
    }
}
