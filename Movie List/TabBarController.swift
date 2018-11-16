//
//  TabBarController.swift
//  Movie List
//
//  Created by Stuart on 11/16/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    // Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for childVC in children {
            if let childVC = childVC as? MovieControllerProtocol {
                childVC.movieController = movieController
            }
        }
    }
    
    // Properties
        let movieController = MovieController()
    
}
