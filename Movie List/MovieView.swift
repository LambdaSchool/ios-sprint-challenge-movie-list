//
//  MovieView.swift
//  Movie List
//
//  Created by William Bundy on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

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

class MovieListVC: UIViewController, MovieConsumer, UITableViewDataSource, UITableViewDelegate, MovieCellDelegate
{
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
		return movieController.movies.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
	{
		// we could guard here, but it's probably just better to crash
		let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieCell

		cell.delegate = self
		cell.movie = movieController.movies[indexPath.row]
		return cell
	}

	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
	{
		if editingStyle == .delete {
			movieController.delete(index:indexPath.row)
			tableView.deleteRows(at: [indexPath], with: .left)
		}
	}




}

class MovieAddVC: UIViewController, MovieConsumer
{
	var movieController: MovieController!

	@IBOutlet weak var nameField: UITextField!

	@IBAction func addMovie(_ sender: Any) {
		guard let name = nameField.text, name != "" else {return}
		movieController.create(name)
	}
}
