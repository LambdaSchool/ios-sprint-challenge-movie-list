//
//  MovieTabBarViewController.swift
//  Movie List
//
//  Created by Jordy on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarViewController: UITabBarController {
    
    let movieController = MovieController()
    
    override func viewDidLoad() {
    super.viewDidLoad()
    }
    
    func passMovieControllerToChildViewControllers() {
        for childVC in childViewControllers {
            if let childVC = childVC as? MovieControllerProtocol {
                childVC.movieController = movieController
            }
        }
    }
}
