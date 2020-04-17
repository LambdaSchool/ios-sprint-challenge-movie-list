//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Kelson Hartle on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//


protocol NewMovieDelegate {
    func movieWasCreated(_ movie: MovieStruct)
    
}

import UIKit

class AddMovieViewController: UIViewController {
    
    // Outlet
    @IBOutlet weak var addMovieTextField: UITextField!
    
    
    var delegate: NewMovieDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButton(_ sender: Any) {
        
        guard let movie = addMovieTextField.text, !movie.isEmpty else { return }
        
        var addMovie = MovieStruct(movie: movie, hasSeen: false)
        
        
        delegate?.movieWasCreated(addMovie)
        
        dismiss(animated: true, completion: nil)
        
    }
}


