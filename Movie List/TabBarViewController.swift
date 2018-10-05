//
//  TabBarViewController.swift
//  Movie List
//
//  Created by Nikita Thomas on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        passMovieModelToChildViews()

    }
    
    
    let movieModel = MovieModel()
    
    func passMovieModelToChildViews() {
        guard let viewControllers = tabBarController?.viewControllers else {return}
        for view in viewControllers {
            if let viewController = view as? MovieModelProtocol {
                viewController.moviewModel = self.movieModel
            }
        }
        
    }


}
