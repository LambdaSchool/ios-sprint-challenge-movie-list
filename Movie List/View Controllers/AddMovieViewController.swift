//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by John Holowesko on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

// Creating Delegate Protocol "AddMovieDelegate"
protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

// Custom View Controller Class
class AddMovieViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet var movieNameTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    // Empty
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBActions
    // Action for tapping "Add Movie"
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let name = movieNameTextField.text,
            !name.isEmpty else { return }
        
        let movie = Movie(name: name)
        
        delegate?.movieWasAdded(movie)
        
    }
}
