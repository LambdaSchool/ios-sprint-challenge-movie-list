//
//  MovieTabViewController.swift
//  Movie
//
//  Created by Diante Lewis-Jolley on 4/26/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class MovieTabViewController: UITabBarController {

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
