//
//  MoviesListTabBarController.swift
//  Movie List
//
//  Created by Daniela Parra on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MoviesListTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Pass model controller to child view controllers as long as they conform to the protocol
        for childVC in childViewControllers {
            if let childVC = childVC as? MovieControllerProtocol {
                childVC.movieController = movieController
            }
        }
    }
    
    //Create an instance of MovieController
    let movieController = MovieController()
}
