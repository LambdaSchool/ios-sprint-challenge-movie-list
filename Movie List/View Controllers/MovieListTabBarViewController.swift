//
//  MovieListTabBarViewController.swift
//  Movie List
//
//  Created by Samantha Gatt on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListTabBarViewController: UITabBarController, MovieControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets its children VCs' movieController var everytime it loads
        passMovieControllerToChildVCs()
    }

    
    // Function to assign its children's movieController var the value of its own movieController
    func passMovieControllerToChildVCs() {
        
    }

    
    var movieController: MovieController?
}
