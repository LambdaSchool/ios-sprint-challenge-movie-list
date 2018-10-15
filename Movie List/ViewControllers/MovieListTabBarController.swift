//
//  MovieListTabBarController.swift
//  Movie List
//
//  Created by Rick Wolter on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListTabBarController: UITabBarController {
    
    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for childVC in childViewControllers {
            if let childVC = childVC as? MovieControllerProtocol {
                childVC.movieController = movieController
            //  This part is allowing all the child views capable of referencing the same movie controller--
            }
        }
    }
}
