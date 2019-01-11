//
//  MainTabBarVC.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 9/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MainTabBarVC: UITabBarController {
    
    let movieController = MovieController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for viewController in childViewControllers {
            if let viewController = viewController as? MovieControllerDelegate {
                viewController.movieController = movieController
            }
        }
    }
}
