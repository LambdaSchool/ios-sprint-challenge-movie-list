//
//  MovieTabBarViewController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarViewController: UITabBarController {
    
    let movieController = MovieController()

    override func viewDidLoad() {
        super.viewDidLoad()

        passMovieControllerToChildViewControllers()
    }

    func passMovieControllerToChildViewControllers() {
        guard let viewControllers = viewControllers else { return }
        
        for vc in viewControllers {
            if let vc = vc as? MovieControllerProtocol {
                vc.movieController = movieController
            }
        }
    }
}
