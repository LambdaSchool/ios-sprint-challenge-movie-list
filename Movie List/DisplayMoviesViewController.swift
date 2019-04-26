//
//  DisplayMoviesViewController.swift
//  Movie List
//
//  Created by Thomas Cacciatore on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DisplayMoviesViewController: UIViewController {
    var movieController: MovieController?
    
    var movieTableViewController: MovieTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "MovieTableView" {
            guard let movieTVC = segue.destination as? MovieTableViewController else { return }
            movieTVC.movieController = movieController
            
            movieTableViewController = movieTVC
        }
        
    }
 

}
