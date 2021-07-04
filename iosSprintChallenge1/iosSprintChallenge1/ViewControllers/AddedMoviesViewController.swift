//
//  AddedMoviesViewController.swift
//  iosSprintChallenge1
//
//  Created by Jonathan Ferrer on 4/26/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

import UIKit

class AddedMoviesViewController: UIViewController, MoviesPresenter {
    var movieController: MovieController?
    
    var moviesPresenter: MoviesPresenter?
    
    var moviesTableViewController: MoviesTableViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let moviesTableViewController = segue.destination as? MoviesTableViewController else { return }
        moviesTableViewController.movieController = movieController
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    
    
}
