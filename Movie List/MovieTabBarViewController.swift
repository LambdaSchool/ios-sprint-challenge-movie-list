//
//  MovieTabBarViewController.swift
//  Movie List
//
//  Created by Thomas Cacciatore on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarViewController: UITabBarController {
    
    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        for childViewController in children {
            
            if let childViewController = childViewController as? MovieControllerProtocol {
                childViewController.movieController = movieController
            }
        }
        
    }
    
}
