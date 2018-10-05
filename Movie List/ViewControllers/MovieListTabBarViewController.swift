//
//  MovieListTabBarViewController.swift
//  Movie List
//
//  Created by Rick Wolter on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListTabBarViewController: UITabBarController {
    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
            for childVC in childViewControllers {
                if let childVC = childVC as? MovieControllerProtocol {
                    childVC.movieController = movieController
                }
            }
        }
}

