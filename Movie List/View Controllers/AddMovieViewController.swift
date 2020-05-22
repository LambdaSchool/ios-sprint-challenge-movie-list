//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Ian Becker on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(movie: Movie)
}

class AddMovieViewController: UIViewController, UITextFieldDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTextField.delegate = self

    }
    
    @IBOutlet weak var movieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovie(_ sender: Any) {
        guard let movie = movieTextField.text else { return }
        
        let movieObject = Movie(name: movie, seen: false)
        
        delegate?.movieWasAdded(movie: movieObject)
        
        self.navigationController?.popViewController(animated: true)
        
    }


}
