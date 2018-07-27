//
//  TabBarViewController.swift
//  Movie List
//
//  Created by De MicheliStefano on 27.07.18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let viewControllers = viewControllers else { return }

        for vc in viewControllers {
            if let vc = vc as? MovieControllerProtocol {
                vc.movieController = movieController
            }
        }
    }
    
    // MARK: - Properties
    
    var movieController = MovieController()

}
