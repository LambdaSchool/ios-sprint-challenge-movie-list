//
//  ListMoviesTableViewController.swift
//  Movie List
//
//  Created by Michael Redig on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ListMoviesTableViewController: UITableViewController, MovieControllerProtocol {

	var movieController: MovieController?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		navigationItem.rightBarButtonItem = editButtonItem

	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		tableView.reloadData()
	}

	// MARK: - Table view data source

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return movieController?.movies.count ?? 0
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
		
		guard let movieCell = cell as? MovieTableViewCell else { return cell }
		
		movieCell.movie = movieController?.movies[indexPath.row]
		movieCell.delegate = self
		
		return movieCell
	}
	override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
		if editingStyle == .delete {
			// Delete the row from the data source
			guard let movie = movieController?.movies[indexPath.row] else { return }
			movieController?.deleteMovie(movie: movie)
			tableView.deleteRows(at: [indexPath], with: .fade)
		}
	}

	override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
		
		guard let movie = movieController?.movies[fromIndexPath.row] else { return }
		movieController?.moveMovie(movie: movie, toIndex: to.row)
		
	}
}


extension ListMoviesTableViewController: MovieTableViewCellDelegate {
	func movieTableViewCell(cell: MovieTableViewCell, updatedWatchedValue: Bool) {
		guard let indexPath = tableView.indexPath(for: cell),
		let movie = cell.movie
			else { return }
		movieController?.setWatchedValueOn(movie: movie, to: updatedWatchedValue)
		
		tableView.reloadRows(at: [indexPath], with: .automatic)
	}
}
