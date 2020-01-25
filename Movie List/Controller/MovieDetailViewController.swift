//
//  MovieDetailViewController.swift
//  Movie List
//
//  Created by Chad Rutherford on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Properties
    var movie: Movie?
    weak var delegate: MovieDelegate?
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Outlets
    @IBOutlet weak var movieNameTextField: UITextField!
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Helper Methods
    private func updateViews() {
        guard let movie = movie else { return }
        movieNameTextField.text = movie.name
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Actions
    @IBAction func addMovieTapped(_ sender: UIButton) {
        if let movie = movie {
            guard let name = movieNameTextField.text, !name.isEmpty else { return }
            delegate?.didUpdate(movie, with: name)
            navigationController?.popViewController(animated: true)
        } else {
            guard let name = movieNameTextField.text, !name.isEmpty else { return }
            let newMovie = Movie(name: name)
            delegate?.didAdd(newMovie)
            navigationController?.popViewController(animated: true)
        }
    }
}
