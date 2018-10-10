

import Foundation
import UIKit
class MovieListVC: UIViewController, MovieConsumer, UITableViewDataSource, UITableViewDelegate, MovieCellDelegate
{
	var filtering:Bool = false
	@IBOutlet weak var table: UITableView!
	var movieController: MovieController!
	func onWatchToggled(_ movie: Movie, state:Bool)
	{
		if let index = movieController.movies.index(of:movie) {
			movieController.movies[index].watched = state
		}
	}

	override func viewDidLoad()
	{
		super.viewDidLoad()
		table.dataSource = self
		table.delegate = self
	}

	override func viewWillAppear(_ animated: Bool)
	{
		super.viewWillAppear(animated)
		table.reloadData()
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
	{
		if filtering {
			return movieController.filteredMovies.count
		}
		return movieController.movies.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
	{
		// we could guard here, but it's probably just better to crash
		let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieCell

		cell.delegate = self
		if filtering {
			cell.movie = movieController.filteredMovies[indexPath.row]
		} else {
			cell.movie = movieController.movies[indexPath.row]
		}
		return cell
	}

	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
	{
		if editingStyle == .delete {
			movieController.delete(index:indexPath.row)
			tableView.deleteRows(at: [indexPath], with: .left)
		}
	}

	@IBOutlet weak var filterField: UITextField!
	@IBAction func filterMovies(_ sender: Any) {
		if filterField.text == "" || filterField.text == nil {
			filtering = false
		} else {
			filtering = true
			movieController.updateFilter(filterField.text!)
			table.reloadData()
		}
	}
}

