//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 11/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
    func movieWasEdited(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    @IBOutlet weak var movieTitleTextField: UITextField!
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var addMovieButton: UIButton!
    
    var delegate: AddMovieDelegate?
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieTitleTextField.becomeFirstResponder()
        updateViews()
    }
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        if let movie = movie {
            // We're editing a movie
            guard let title = movieTitleTextField.text,
            !title.isEmpty else { return }
            
            movie.name = title
            
            delegate?.movieWasEdited(movie)
        } else {
            // We're adding a new movie
            
            guard let title = movieTitleTextField.text,
                !title.isEmpty else { return }
            let movie = Movie(name: title)
            delegate?.movieWasAdded(movie)
        }
        
    }
    
    private func updateViews() {
        guard isViewLoaded,
            let movie = movie else { return }
            
        movieTitleTextField.text = movie.name
        movieLabel.text = "Edit movie title"
        addMovieButton.setTitle("Edit Movie", for: .normal)
    }
}
