import Foundation
import UIKit

class MovieAddVC: UIViewController, MovieConsumer
{
	var movieController: MovieController!

	@IBOutlet weak var nameField: UITextField!

	@IBAction func addMovie(_ sender: Any) {
		guard let name = nameField.text, name != "" else {return}
		movieController.create(name)
		nameField.text = nil
	}
}
