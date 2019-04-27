//
//  MoviesTabBarViewController.swift
//  MoviesTry9
//
//  Created by morse on 4/26/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class MoviesTabBarViewController: UITabBarController {
    
    let movieController = MovieController()

    override func viewDidLoad() {
        super.viewDidLoad()
        passMovieControllerToChildViewControllers()
    }
    
    func passMovieControllerToChildViewControllers() {
        
        for childViewController in children {
            guard let childViewController = childViewController as? MovieControllerProtocol else { return }
            childViewController.movieController = movieController
        }
    }
}
