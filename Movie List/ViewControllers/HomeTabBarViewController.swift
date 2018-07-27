//
//  HomeTabBarViewController.swift
//  Movie List
//
//  Created by Jonathan T. Miles on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieControllerProtocol: class {
    var movieController: MovieController? { get set }
}

class HomeTabBarViewController: UITabBarController {
    
    func passMovieControllerToChildViewControllers () {
        guard let viewControllers = viewControllers else { return }
        
        for childVC in viewControllers {
            if let vc = childVC as? MovieControllerProtocol {
                vc.movieController = movieController
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passMovieControllerToChildViewControllers()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Properties
    
    var movieController = MovieController()

}
