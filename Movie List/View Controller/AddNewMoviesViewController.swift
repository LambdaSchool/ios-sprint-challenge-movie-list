//
//  AddNewMoviesViewController.swift
//  Movie List
//
//  Created by Alex Ladines on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddNewMoviesViewController: UIViewController, MovieControllerProtocol {
    var movieController: MovieController?
    @IBOutlet weak var enterMovieTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        let moviesVC = MoviesTableViewController()
        guard let movie = enterMovieTextField.text
            else { return }
        
        print(movie)
        moviesVC.tableView.beginUpdates()
        movieController?.addMovie(name: movie)
        moviesVC.tableView.endUpdates()

    }
}
