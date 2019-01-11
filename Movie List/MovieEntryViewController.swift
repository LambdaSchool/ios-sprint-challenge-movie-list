//
//  MovieEntryViewController.swift
//  Movie List
//
//  Created by Moses Robinson on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieEntryViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBAction func add(_ sender: Any) {
        guard let movieTitle = textField.text, !movieTitle.isEmpty else { return }
        MovieModel.shared.addMovie(movieTitle)
        textField.text = ""
    }
}
