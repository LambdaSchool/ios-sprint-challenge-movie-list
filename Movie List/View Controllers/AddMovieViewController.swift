//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Fabiola S on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func addMovie(_ sender: UIButton) {
        guard let movieTitle = movieTitleTextField.text,
              !movieTitle.isEmpty else { return }
        
        let movie = Movie(name: movieTitle, haveSeen: false)
        
        delegate?.movieWasAdded(movie)
    }
    
}

    




