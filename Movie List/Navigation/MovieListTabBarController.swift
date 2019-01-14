//
//  MovieListTabBarController.swift
//  Movie List
//
//  Created by Paul Yi on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTabBarController: UITabBarController, UITabBarControllerDelegate {
    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        for childVC in children {
            if let childVC = childVC as? MovieControllerProtocol {
                childVC.movieController = movieController
            }
        }
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if tabBarController.selectedIndex == 1 {
            guard let movieTableController = viewController as? MovieListViewController else { return }
            movieTableController.movieTableView.reloadData()
        }
    }
}
