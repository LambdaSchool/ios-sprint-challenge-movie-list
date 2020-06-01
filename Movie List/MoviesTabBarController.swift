//
//  MoviesTabBarController.swift
//  Movie List
//
//  Created by Dojo on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTabBarController: UITabBarController {
    
    let movieController: MovieController = MovieController.init()
    func passMovieControllerToChildControllers() {
        
        guard let viewControllers = self.viewControllers else {
            return
        }
        for viewController in viewControllers {
            if var viewController = viewController as? MovieControllerProtocol {
                viewController.movieController = self.movieController
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passMovieControllerToChildControllers()
        
    }
}
