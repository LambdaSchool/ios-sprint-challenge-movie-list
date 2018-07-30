//
//  MoviesTabBarViewController.swift
//  Movie List
//
//  Created by David Oliver Doswell on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MoviesTabBarViewController: UITabBarController {
    
    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passMovieControllerToChildViewControllers()
    }
    
    
    func passMovieControllerToChildViewControllers() {
        for childViewControllers in childViewControllers {
            if let vc = childViewControllers as? MovieProtocol {
                vc.movieController = movieController
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //
    }
}
