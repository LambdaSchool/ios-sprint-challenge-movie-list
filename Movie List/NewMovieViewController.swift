//
//  NewMovieViewController.swift
//  Movie List
//
//  Created by Craig Swanson on 9/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol NewMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class NewMovieViewController: UIViewController {

    @IBOutlet weak var movieNameTextField: UITextField!
    
    var delegate: NewMovieDelegate?
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    func updateView() {
        guard let movie = movie else { return }
        movieNameTextField.text = movie.name
    }

    @IBAction func saveNewMovie(_ sender: UIButton) {
        guard let name = movieNameTextField.text, !name.isEmpty else { return }
        
        let movie = Movie(name: name, seen: false)
        delegate?.movieWasAdded(movie)
    }
}
