//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Dennis on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func addMovie(movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var enterMovie: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovieTapped(_ sender: UIButton) {
        guard let movieText = enterMovie.text else { return }
        let movie = Movie(title: movieText)
        delegate?.addMovie(movie: movie)
        dismiss(animated: true, completion: nil)
    }
}
