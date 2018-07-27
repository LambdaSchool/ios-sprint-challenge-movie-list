//
//  MovieTabBarViewController.swift
//  Movie List
//
//  Created by Linh Bouniol on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarViewController: UITabBarController {

    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        passMovieControllerToChildViewControllers()
    }

    func passMovieControllerToChildViewControllers() {
        for childVC in childViewControllers {
            if let vc = childVC as? MovieControllerProtocol {
                vc.movieController = movieController
            }
        }
    }
    
}
