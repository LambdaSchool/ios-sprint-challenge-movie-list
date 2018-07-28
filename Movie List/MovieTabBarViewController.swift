//
//  MovieTabBarViewController.swift
//  Movie List
//
//  Created by Carolyn Lea on 7/27/18.
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
        
        for childVC in childViewControllers {
            
            if let navigationController = childVC as? UINavigationController {
                
                guard let vc = navigationController.childViewControllers.first as? MovieControllerProtocol else {return}
                vc.movieController = movieController
            }
        }
    }

}
