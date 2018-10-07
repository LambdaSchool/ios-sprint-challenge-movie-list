import UIKit

class MovieListTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        for childVC in childViewControllers {
            if let childVC = childVC as? MovieControllerProtocol {
                childVC.movieController = movieController
            }
        }
    }
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if tabBarController.selectedIndex == 1 {
            guard let movieTableController = viewController as? MovieTableViewController else { return }
            movieTableController.movieTableView.reloadData()
        }
    }
}
