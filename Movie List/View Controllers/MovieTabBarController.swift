//
//  MovieTabBarController.swift
//  Movie List
//
//  Created by Madison Waters on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        passMoveControllerToChildren()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func passMoveControllerToChildren() {
        
        for childVC in childViewControllers {
            
            if let childVC = childVC as? MovieControllerProtocol {
                childVC.movieController = movieController
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    let movieController = MovieController()
}
