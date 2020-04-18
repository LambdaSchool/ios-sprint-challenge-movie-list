//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Clayton Watkins on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let movie = addMovieTextField.text,
            !movie.isEmpty else { return }
        let newMovie = Movie(movieName: movie, movieSeen: false)
        delegate?.movieWasAdded(newMovie)
        dismiss(animated: true, completion: nil)
    }
}

extension AddMovieViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}
