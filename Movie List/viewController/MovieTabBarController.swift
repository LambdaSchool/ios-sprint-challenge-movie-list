//
//  MovieTabBarController.swift
//  Movie List
//
//  Created by Iyin Raphael on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarController: UITabBarController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        passMovieControllerToChild()
        // Do any additional setup after loading the view.
    }

    
    func passMovieControllerToChild() {
        for childVC in childViewControllers {
            if var childVC = childVC as? MovieNameControllerProtocol {
                childVC.movieNameController = movieNameController
            }
        }
    }
    
let movieNameController = MovieNameController()
}
