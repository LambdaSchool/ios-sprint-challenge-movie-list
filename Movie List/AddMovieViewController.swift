//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by James Sedlacek on 5/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol addMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController, UITextFieldDelegate {
    
    var delegate: addMovieDelegate?
    
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let movieName = movieTextField.text,
            !movieName.isEmpty else { return }
        let movie = Movie(name: movieName)
        delegate?.movieWasAdded(movie)
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var movieTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTextField.delegate = self
    }

}
