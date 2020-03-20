//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Chris Dobek on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


protocol NewMovieDelegate {
    func movieWasAdded(movie: Movie)
}

class AddNewMovieViewController: UIViewController {

    @IBOutlet weak var movieTextField: UITextField!
    
    var delegate: NewMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addNewMovieButton(_ sender: Any) {
        guard let  newMovie = movieTextField.text else {
            return
        }
        
        let movie = Movie(title: newMovie, seen: true )
        
     delegate?.movieWasAdded(movie: movie)
     dismiss(animated: true, completion: nil)
    }
}
