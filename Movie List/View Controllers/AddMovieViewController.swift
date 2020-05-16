//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Ian Becker on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet var addMovieViewController: UIView!
    @IBOutlet weak var movieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func addMovie(_ sender: Any) {
    guard let movie = movieTextField.text else { return }
        
        let movieAdded = Movie(name: movie)
        
        delegate?.movieWasAdded(movieAdded)
        
        dismiss(animated: true, completion: nil)
    }
    
}
