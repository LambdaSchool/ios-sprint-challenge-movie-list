//
//  MovieListTabBarController.swift
//  MovieList2
//
//  Created by Welinkton on 9/7/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class MovieListTabBarController: UITabBarController {

    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Children VC adhere to the Protocol, then are passed on 
        for childVC in childViewControllers {
            if let childVC = childVC as? MovieListProtocol {
                childVC.movieController = movieController
            }
        }
    }
        
}
