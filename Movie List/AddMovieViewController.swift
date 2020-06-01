//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Dojo on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

extension Notification.Name {
    static let addMovieTextField = Notification.Name("MovieCell")
}

class AddMovieViewController: UIViewController, MovieControllerProtocol {
    var movieController: MovieController?
    
    @IBOutlet weak var addMovieTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovieButtonPressed(_ sender: UIButton) {
        self.movieController?.create(name: addMovieTextField.text ?? "")
        addMovieTextField.text = nil
        dismiss(animated: true, completion: nil)
    }
}
