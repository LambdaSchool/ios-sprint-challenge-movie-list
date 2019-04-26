//
//  DisplayMoviesViewController.swift
//  Movie List
//
//  Created by Thomas Cacciatore on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DisplayMoviesViewController: UIViewController, MovieControllerProtocol {
    var movieController: MovieController?
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "MovieTableView" {
            if let movieTVC = segue.destination as? MovieControllerProtocol {
            movieTVC.movieController = movieController
        }
            
        }
        
    }
 

}
