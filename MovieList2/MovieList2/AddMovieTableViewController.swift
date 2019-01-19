//
//  AddMovieTableViewController.swift
//  MovieList2
//
//  Created by Diante Lewis-Jolley on 1/18/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {


    @IBOutlet weak var textField: UITextField!


    @IBAction func addButton(_ sender: Any) {
        guard let movie = textField.text else { return }
        MovieController.shared.addMovie(movie)
        textField.text = nil
    }
}
