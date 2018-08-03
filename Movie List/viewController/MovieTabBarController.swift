//
//  MovieTabBarController.swift
//  Movie List
//
//  Created by Iyin Raphael on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarController: UITabBarController {

   let movieNameController = MovieNameController()
    
    func passVoteControllerToChild(){
        for childVc in childViewControllers {
            guard var childVc = childVc as? MovieNameControllerProtocol else {return}
                childVc.movieNameController = movieNameController
            }
        }

}
