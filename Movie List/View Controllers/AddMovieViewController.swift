//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by David Wright on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate: AnyObject {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var movieTitleTextField: UITextField!
    
    // MARK: - Properties
    weak var delegate: AddMovieDelegate?
    
    // MARK: - IBActions
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        guard let movieTitle = movieTitleTextField.text, !movieTitle.isEmpty else { return }
        
        let movie = Movie(title: movieTitle)
        delegate?.movieWasAdded(movie)
        navigationController?.popViewController(animated: true)
    }
}
