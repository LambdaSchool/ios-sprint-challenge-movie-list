//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Andrew Ruiz on 8/16/19.
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
        
        movieTitleTextField.delegate = self
        
    }
    
    
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        
        guard let movieTitle = movieTitleTextField.text else { return }
        
        var movie = Movie(movieName: movieTitle, beenSeen: false)
        
        delegate?.movieWasAdded(movie)
    }
    
    
    
}

extension AddMovieViewController : UITextFieldDelegate {
    
}
