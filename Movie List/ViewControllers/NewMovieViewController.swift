//
//  NewMovieViewController.swift
//  Movie List
//
//  Created by Jonathan T. Miles on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class NewMovieViewController: UIViewController, MovieControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    // MARK: - Actions
    
    @IBAction func addMovie(_ sender: Any) {
        guard let title = newMovieTextField.text else { return }
        movieController?.createMovie(title: title, isSeen: false)
    }
    
    // MARK: - Properties
    
    var movieController: MovieController?
    
    @IBOutlet weak var newMovieTextField: UITextField!
}
