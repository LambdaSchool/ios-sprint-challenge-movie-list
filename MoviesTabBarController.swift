//
//  MoviesTabBarController.swift
//  Movie List
//
//  Created by Anesa Krnic on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTabBarController: UITabBarController {

    let movieController: MovieController = MovieController.init()
    func passMovieControllerToChildControllers() {
        
        guard let viewControllers = self.viewControllers else {
            return
        }
        for viewController in viewControllers {
            if var viewController = viewController as? MovieControllerProtocol {
                viewController.movieController = self.movieController
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        passMovieControllerToChildControllers()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
