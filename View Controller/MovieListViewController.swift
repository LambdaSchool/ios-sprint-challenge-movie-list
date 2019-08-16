//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Percy Ngan on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {


	@IBOutlet weak var tableView: UITableView!

	var movies: [Movie] = []

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "AddMovieSegue" {
			if let addMovieVC = segue.destination as? AddMovieViewController {
				addMovieVC.delegate = self
			}
		}
	}
}

extension MovieListViewController: UITableViewDataSource {

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return movies.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }

		let movie1 = movies[indexPath.row]
		cell.movie1 = movie1

		return cell
		}
	}

extension MovieListViewController: AddMovieDelegate {

	func movieCreated(_ movie: Movie) {
		movies.append(movie)
		dismiss(animated: true, completion: nil)
		tableView.reloadData()
	}

}
