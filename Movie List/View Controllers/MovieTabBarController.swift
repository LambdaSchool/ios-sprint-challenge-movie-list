//
//  MovieTabBarController.swift
//  Movie List
//
//  Created by Welinkton on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class MovieListTabBarController: UITabBarController {
    
    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for childVC in childViewControllers {
            if let childVC = childVC as? MovieProtocol {
                childVC.movieController = movieController
            }
        }
    }
    
}
