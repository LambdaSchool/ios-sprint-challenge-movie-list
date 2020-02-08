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

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let movieTitleText = movieTitleTextField.text,
        !movieTitleText.isEmpty
            else { return }
        
        var movie = Movie(name: movieTitleText, hasBeenWatched: false)
        movieDelegate?.addMovie(movie)
        
        navigationController?.popViewController(animated: true)
        dismiss(animated: true)
    }
    

}
