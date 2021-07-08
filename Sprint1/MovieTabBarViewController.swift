//
//  MovieTabBarViewController.swift
//  Sprint1
//
//  Created by Victor  on 4/26/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import UIKit

class MovieTabBarViewController: UITabBarController {
    
    //passing the data between views
    let movieController = MovieController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for childViewController in children {
            if let childViewController = childViewController as? MoviePresenter {
                childViewController.movieController = movieController
            }
        }
    }
}
