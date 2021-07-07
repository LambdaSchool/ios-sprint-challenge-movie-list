//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Joshua Sharp on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieName: UITextField!
    @IBOutlet weak var movieSeen: UISwitch!
    var delegate: MovieDelegate?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieName.becomeFirstResponder()
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        guard let movieName = movieName.text, !movieName.isEmpty else {return}
        let movie: Movie = Movie(movieName, movieSeen.isOn)
        delegate?.addMovie(movie)
        dismiss(animated: true, completion: nil)
    }
    
}
