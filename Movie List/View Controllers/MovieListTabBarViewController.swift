//
//  MovieListTabBarViewController.swift
//  Movie List
//
//  Created by Samantha Gatt on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets its children VCs' movieController var everytime it loads
        passMovieControllerToChildVCs()
    }

    
    // Function to assign its children's movieController var the value of its own movieController
    func passMovieControllerToChildVCs() {
        
        // Creates an array of children VCs stored in the constant childrenVCs
        guard let childrenVCs = self.viewControllers else { return }
        
        for childVC in childrenVCs {
            
            // Told me conformingVC.movieController couldn't be set since it was a let constant so...
            if var conformingVC = childVC as? MovieControllerProtocol {
                
                // Assigns its children's movieController attribute to the value of its own
                conformingVC.movieController = movieController
            }
        }
        
        
    }

    // Declares an empty instance of MovieController so it can control instances of Movie and make a movies array
    let movieController = MovieController()
}
