//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Waseem Idelbi on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet var movieTextField: UITextField!
    
    @IBAction func addMovieButton(_ sender: Any) {
        guard let movieTitle = movieTextField.text,
            !movieTitle.isEmpty else {return}
        var movie = Movie(title: movieTitle, seen: false)
        
        delegate?.movieWasAdded(movie: movie)
        }
        
    var delegate: AddMovieDelegate?
    }
    



