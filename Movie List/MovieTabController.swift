//
//  MovieTabController.swift
//  Movie List
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        passMovieControllerToChildViewControllers()
    }
    var movieController = MovieController()
    
    func passMovieControllerToChildViewControllers() {
        guard let viewControllers = self.viewControllers else { return }
        
        for childVC in viewControllers {
            if let childVC = childVC as? MovieControllerProtocol {
                childVC.movieContoller = movieController
            }
        }
    }

}
