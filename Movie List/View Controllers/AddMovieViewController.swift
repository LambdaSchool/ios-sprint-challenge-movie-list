//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Scott Bennett on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {
    
    var movieController: MovieController?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text else { return }
        movieController?.createMovie(with: name, isSeen: false)
        nameTextField.text = ""
    }
    

}
