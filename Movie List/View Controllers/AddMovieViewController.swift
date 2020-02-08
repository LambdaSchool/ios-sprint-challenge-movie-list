//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Breena Greek on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    // MARK: IBOutlets
    
    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var movieText: UITextField!
    
    // MARK: IBActions
    
    
    @IBAction func addTapped(_ sender: Any) {
        guard let addMovie = movieText.text,
            !addMovie.isEmpty else { return }
        
        let movie = Movie(name: addMovie)
        delegate?.movieWasCreated(movie: movie)
        dismiss(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

