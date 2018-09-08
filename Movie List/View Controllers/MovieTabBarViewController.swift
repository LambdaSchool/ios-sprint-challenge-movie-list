//
//  MovieTabBarViewController.swift
//  Movie List
//
//  Created by Scott Bennett on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarViewController: UITabBarController {

    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for childVC in childViewControllers {
            guard let movieVC = childVC as? MovieControllerProtocol else { return }
            movieVC.movieController = movieController
        }
    }
}
