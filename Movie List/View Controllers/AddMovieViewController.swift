//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Chris Price on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let title = movieTextField.text,
            title != "" else { return }
        movieController.createMovie(with: title)
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var movieTextField: UITextField!
    var movieController: MovieController!
    
}
