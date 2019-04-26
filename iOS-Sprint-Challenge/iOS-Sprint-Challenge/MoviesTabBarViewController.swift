//
//  MoviesTabBarViewController.swift
//  iOS-Sprint-Challenge
//
//  Created by Blair Holmgren on 4/26/19.
//  Copyright © 2019 Blair Holmgren. All rights reserved.
//

import UIKit

class MoviesTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        passMovieControllerToChildViewControllers()
        // Do any additional setup after loading the view.
    }
    
    func passMovieControllerToChildViewControllers() {
        for childViewController in children {
            guard let childViewController = childViewController as? MovieControllerProtocol else { return }
            childViewController.movieController = movieController
        }
        
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    let movieController = MovieController()
}
