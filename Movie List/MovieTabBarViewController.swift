//
//  MovieTabBarViewController.swift
//  Movie List
//
//  Created by Andrew Liao on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        passMovieControllerToChildVCs()
  
    }

    func passMovieControllerToChildVCs(){
        guard let childVCs = viewControllers else {return}
        for childVC in childVCs{
            if let vc = childVC as? MovieControllerProtocol{
                vc.movieController = movieController
            }
        }
    }
      
    //MARK: - Properties
    let movieController = MovieController()
    
}
