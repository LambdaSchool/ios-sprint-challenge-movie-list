//
//  MovieViewController.swift
//
//  Created by Alex Perse on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    
    @IBOutlet weak var movieNameEntered: UITextField!
    
    // viewController is expecting access to the MovieTableViewController and a MoviesController
    var mtvc: MovieTableViewController?
    var moviesCTR: MoviesController? 
    
    // everything that happens just before the view will appear on screen 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //refers to the specific instance of MoviesController that has the data in it
        moviesCTR = MoviesController.shared
        
    }
 
    @IBAction func addMovieTapped(_ sender: Any) {
        newMovieWasAdded(movieName: movieNameEntered.text!)
//        dismiss(animated: true, completion: nil)
    }
    
    func newMovieWasAdded(movieName: String) {
        moviesCTR?.movies.append(movieName)
        mtvc?.tableView.reloadData()
    }
}
