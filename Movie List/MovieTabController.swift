//
//  MovieTabController.swift
//  Movie List
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabController: UITabBarController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        //Pass the movie controller to the child views
        passMovieControllerToChildViewControllers()
    }
    
    // MARK: - Properties
    var movieController = MovieController()
    
    // MARK: - Utility Methods
    func passMovieControllerToChildViewControllers() {
        //Unwrap the view controllers array
        guard let viewControllers = self.viewControllers else { return }
        
        //Cycle through each view controller, make sure it conforms to the movie controller protocol and pass it the movie controller
        for childVC in viewControllers {
            if let childVC = childVC as? MovieControllerProtocol {
                childVC.movieContoller = movieController
            }
        }
    }

}
