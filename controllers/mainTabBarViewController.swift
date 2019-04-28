//
//  mainTabBarViewController.swift
//  Movie List
//
//  Created by Brian Vilchez on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class mainTabBarViewController: UITabBarController {

    let movieController = MovieController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for childViewController in children {
            
            if let childViewController = childViewController as? MoviePresenter {
                
                childViewController.movieController = movieController
            }
        }
    }
    
    

}
