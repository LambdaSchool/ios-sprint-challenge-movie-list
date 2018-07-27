
import Foundation
import UIKit

class MovieTabBarVC: UITabBarController
{
	var movieController = MovieController()

	override func viewDidLoad()
	{
		for defaultChild in childViewControllers {
			if var child = defaultChild as? MovieConsumer {
				child.movieController = movieController
			}
		}
	}
}

