//
//  MovieTabBarViewController.swift
//  Movie List
//
//  Created by Moin Uddin on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        passMovieControllerToChildViewControllers()
    }
    
    func passMovieControllerToChildViewControllers() {
        for childVC in childViewControllers {
            guard let childVC = childVC as? MovieControllerProtocol else { return }
            childVC.movieController = movieController
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let movieController = MovieController()
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
