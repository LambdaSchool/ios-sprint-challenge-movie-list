import UIKit

class MovieListTabBarController: UITabBarController {
    
    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for childVC in childViewControllers {
            if let childVC = childVC as? MovieControllerProtocol {
                childVC.movieController = movieController
            }
        }
    }
}
