//
//  AddMovie.swift
//  MovieList
//
//  Created by Waseem Idelbi on 2/9/20.
//  Copyright © 2020 Waseem Idelbi. All rights reserved.
//

import UIKit
protocol AddMovieDelegate: AnyObject {
    func movieWasAdded(movie: Movie)
}

class AddMovie: UIViewController {

    @IBOutlet var MovieNameTextField: UITextField!
    weak var delegate: AddMovieDelegate?
    var movieController: MovieController?
    
    @IBAction func AddMovieButtonTapped(_ sender: Any) {
        
        guard let movieTitle = MovieNameTextField.text,
            !movieTitle.isEmpty,
        let controller = movieController else {return}
        let movie = Movie(name: movieTitle)
        controller.add(movie: movie)
        delegate?.movieWasAdded(movie: movie)
        dismiss(animated: true)
    }
    
}
