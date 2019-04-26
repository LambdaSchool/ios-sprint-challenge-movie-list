//
//  MovieTabBarController.swift
//  Movie List
//
//  Created by Christopher Aronson on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarController: UITabBarController {
    
    let movieController = MovieController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for childViewController in children {
            if let childViewController = childViewController as? MoviesPresenter {
                childViewController.movieController = movieController
            }
        }


    }

}
