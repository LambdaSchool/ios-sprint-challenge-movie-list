//
//  MovieViewController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    @IBOutlet weak var movieTitleTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    @IBOutlet weak var addEditLabel: UILabel!
    
    var movieController: MovieController?
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    var movieIndex: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    private func updateViews() {
        guard let movie = movie, isViewLoaded else { return }
        addMovieButton.setTitle("Edit Movie", for: .normal)
        addEditLabel.text = "Edit Movie Title"
        movieTitleTextField.text = movie.title
        
    }
    

    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let movieTitle = movieTitleTextField.text, !movieTitle.isEmpty,
        let movieController = movieController else { return }
        
        if let _ = movie,
            let movieIndex = movieIndex {
            movieController.editMovie(at: movieIndex, withNewTitle: movieTitle)
            movieController.saveToPersistentStore()
        } else {
            movieController.createMovie(withTitle: movieTitle)
            movieController.saveToPersistentStore()
            
        }
        
        navigationController?.popViewController(animated: true)
    }
    
}
