//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jesse Ruiz on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        guard let movieTitle = addMovieTextField.text,
            !movieTitle.isEmpty else { return }
        
        let movie = Movie(title: movieTitle)
        
        delegate?.movieWasCreated(movie)
    }
}
