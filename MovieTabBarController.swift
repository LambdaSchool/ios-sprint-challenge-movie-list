//
//  MovieTabBarController.swift
//  Movie List
//
//  Created by Madison Waters on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for childVC in childViewControllers {
            
            if let childVC = childVC as? MovieListPresenter {
                childVC.movieController = movieController
            }
        }
    }

   let movieController = MovieController()

}
