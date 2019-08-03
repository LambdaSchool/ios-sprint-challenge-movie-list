//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by John Kouris on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet var movieNameTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        
        guard let movieName = movieNameTextField.text, !movieName.isEmpty else {
            let alert = UIAlertController(title: "Missing Information", message: "Please enter the name of the movie before adding it", preferredStyle: .alert)
            let dismiss = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
            alert.addAction(dismiss)
            present(alert, animated: true, completion: nil)
            return
        }
        
        let movie = Movie(name: movieName, seen: false)
        
        delegate?.movieWasAdded(movie)
        
    }
    

}
