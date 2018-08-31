//
//  MoviesTabBarController.swift
//  Movie List
//
//  Created by Scott Bennett on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MoviesTabBarController: UITabBarController {
    
    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for childVC in childViewControllers {
            if let childVC = childVC as? MovieControllerProtocol {
                childVC.movieContoller = movieController
            }
        }
    }
    
}
