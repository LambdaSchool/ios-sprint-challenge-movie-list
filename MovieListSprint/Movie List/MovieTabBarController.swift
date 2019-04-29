//
//  MovieTabViewController.swift
//  Movie List
//
//  Created by Taylor Lyles on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTabViewController: UITabBarController {
    
    let movieController = MovieController()

    override func viewDidLoad() {
        super.viewDidLoad()

        for childViewController in children {
            if let childViewController = childViewController as? MoviesPresenter {
                childViewController.movieController = movieController
            }
        }
      
        
    }

}
    

    


