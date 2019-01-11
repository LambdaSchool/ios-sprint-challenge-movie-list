//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Nathanael Youngren on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddNewMovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovie(_ sender: UIButton) {
        guard let movieTitle = textField.text else { return }
        Movies.shared.addNewMovie(movieTitle)
        textField.text = nil
    }
    
    @IBOutlet weak var textField: UITextField!

}
