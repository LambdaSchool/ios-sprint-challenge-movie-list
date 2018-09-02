//
//  MainTabBarVC.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 9/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        passViewControllerToChildController()
    }
    
    var movieController = MovieController()
    
    func passViewControllerToChildController() {
        guard let viewControllers = viewControllers.self else { return }
        
        for viewController in viewControllers {
            if let viewController = viewController as? MovieControllerProtocol {
                viewController.movieController = movieController
            }
        }
    }
}
