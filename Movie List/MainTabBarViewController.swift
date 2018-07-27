//
//  MainTabBarViewController.swift
//  Movie List
//
//  Created by Simon Elhoej Steinmejer on 27/07/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController
{
    let movieController = MovieController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        for childVC in childViewControllers
        {
            if let viewController = childVC as? MovieHandler
            {
                viewController.movieController = self.movieController
            }
        }
    }




}
