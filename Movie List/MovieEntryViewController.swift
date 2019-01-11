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
    }
    
    @IBOutlet weak var textField: UITextField!
    @IBAction func add(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        MovieModel.shared.addMovie(text)
        textField.text = ""
    }

}
