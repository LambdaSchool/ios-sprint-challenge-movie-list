//
//  MovieTabBarViewController.swift
//  Movie List
//
//  Created by Thomas Cacciatore on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarViewController: UITabBarController {
    
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
    
    

