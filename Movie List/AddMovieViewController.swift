//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Josh Kocsis on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    @IBOutlet weak var addMovieText: UITextField!
    @IBOutlet weak var saveNewMovie: UIButton!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func saveNewMoive(_ sender: UIButton) {
        
    var newMovie = Movie(moviesName: [], seen: false)
        
    if let addMovie = addMovieText.text,
        !addMovie.isEmpty {
        newMovie.moviesName.append(addMovie)
        }
        
        delegate?.movieWasAdded(newMovie)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension AddMovieViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}
