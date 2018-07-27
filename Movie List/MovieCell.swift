
import Foundation
import UIKit

protocol MovieCellDelegate: class
{
	func onWatchToggled(_ movie:Movie, state:Bool)
}

class MovieCell: UITableViewCell
{
	weak var delegate:MovieCellDelegate!

	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var watchedSwitch: UISwitch!
	var movie:Movie! {
		didSet {
			nameLabel.text = movie.name
			watchedSwitch.setOn(movie.watched, animated: true)
		}
	}

	@IBAction func watchToggled(_ sender: Any)
	{
		delegate.onWatchToggled(movie, state:watchedSwitch.isOn)
	}
}

