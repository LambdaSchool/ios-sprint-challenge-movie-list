import UIKit

class ResultsTabBarViewController: UITabBarController {
    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passMovieControllerToChildViewControllers()
    }
    
    func passMovieControllerToChildViewControllers() {
        guard let viewControllers = self.viewControllers else { return }
        
        for v in viewControllers {
            if var viewController = v as? MovieControllerProtocol {
                viewController.movieController = self.movieController
            }
        }
        
    }
}
