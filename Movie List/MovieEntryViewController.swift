//
//  MovieEntryViewController.swift
//  Movie List
//
//  Created by Moses Robinson on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieEntryViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addButton.layer.cornerRadius = 4
    }
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func add(_ sender: Any) {
        guard let movieTitle = textField.text, !movieTitle.isEmpty else { return }
        MovieModel.shared.addMovie(movieTitle)
        textField.text = ""
    }
}
