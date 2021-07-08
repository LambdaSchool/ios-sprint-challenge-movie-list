//
//  MoviesTabBarViewController.swift
//  Movie List
//
//  Created by Alex Ladines on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTabBarViewController: UITabBarController {

    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Pass the voteController to child view controllers
        // i.e.: share data between all the managed screens
        for childViewController in children
        {
            if let childViewController = childViewController as? MovieControllerProtocol
            {
                childViewController.movieController = movieController
            }
        }
    }
    
}
