//
//  NewMovieViewController.swift
//  MovieList
//
//  Created by Sherene Fearon on 4/17/20.
//  Copyright © 2020 Quwayne Brown. All rights reserved.
//

import UIKit

protocol NewMovieDelegate {
    
    func movieAdded(movie: Movie)
}


class NewMovieViewController: UIViewController {
     
    var delegate: NewMovieDelegate?
    
    
    
    @IBOutlet weak var newMovieTextfield: UITextField!
    
    
    @IBAction func addMovie(_ sender: Any) {
    
        guard let movieName = newMovieTextfield.text else { return }
    
        let movie = Movie(name: movieName)
        delegate?.movieAdded(movie: movie)
    navigationController?.popToRootViewController(animated: true)
    }
    
}
