//
//  MoviesTabBarViewController.swift
//  iOS-Sprint-Challenge
//
//  Created by Blair Holmgren on 4/26/19.
//  Copyright © 2019 Blair Holmgren. All rights reserved.
//

import UIKit

class MoviesTabBarViewController: UITabBarController {

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
    
    let movieController = MovieController()
}
