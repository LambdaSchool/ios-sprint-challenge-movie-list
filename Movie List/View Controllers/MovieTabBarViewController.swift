//
//  MovieTabBarViewController.swift
//  Movie List
//
//  Created by Conner on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for cv in childViewControllers {
            if let vc = cv as? MovieControllerProtocol {
                vc.movieController = movieController
            }
        }
    }
    
    var movieController = MovieController()
}
