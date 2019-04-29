//
//  MovieTabBarViewController.swift
//  Movie List
//
//  Created by Kobe McKee on 4/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarViewController: UITabBarController {

    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passMovieControllerToChildren()
    }
    
    func passMovieControllerToChildren() {
        guard let childVCs = self.viewControllers else { return }
        
        for childVC in childVCs {
            if var child = childVC as? MovieControllerProtocol {
                child.movieController = movieController
            }
        }
    }
    
}
