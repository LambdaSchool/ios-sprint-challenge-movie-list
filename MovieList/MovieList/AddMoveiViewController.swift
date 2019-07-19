//
//  AddMoveiViewController.swift
//  MovieList
//
//  Created by brian vilchez on 7/19/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class AddMoveiViewController: UIViewController {
    
    // MARK:properties
     @IBOutlet var MovieTextField: UITextField!
    var delegate: CreateMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func MovieButton(sender: UIButton) {
        guard let movie = MovieTextField.text else {return}
        let movieName = Movie(Name: movie)
        delegate?.addMovie(movieName)
        navigationController?.popViewController(animated: true)
    }
    
}
