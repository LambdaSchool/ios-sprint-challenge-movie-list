//
//  MovieTabBarViewController.swift
//  Movie List
//
//  Created by Farhan on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarViewController: UITabBarController {
    
    let movieController = MovieController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for childVC in childViewControllers {
            
            if let childVC = childVC as? MoviePresenter {
                
                childVC.movieController = movieController
                
            }
            
        }
    }
    


}
