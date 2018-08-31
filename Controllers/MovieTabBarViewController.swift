//
//  MovieTabBarViewController.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarViewController: UITabBarController, MovieControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        passMovieControllerToChildControllers()
    }

    var movieController: MovieController?
    
    func passMovieControllerToChildControllers() {
        
        guard let childVCs = viewControllers else { return }
        
        for childVC in childVCs {
            
            if let viewController = childVC as? MovieControllerProtocol {
                
                viewController.movieController = movieController
            }
        }
    }

}
