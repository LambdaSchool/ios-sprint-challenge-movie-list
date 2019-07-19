//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Taylor Lyles on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
	
	var movies: [Movie] = []
	
	@IBOutlet weak var tableView: UITableView!
	
}

extension MovieListViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return movies.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "AddMovieModalSegue", for: indexPath) as? AddMovieViewController else { return UITableViewCell() }
		
		let movie = movies[indexPath.row]
		cell.movie = movie
		
		return cell
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "AddMovieModalSegue" {
			if let addMovieVC = segue.destination as? AddMovieViewController {
				addMovieVC.delegate = self
				}
		} else if segue.identifier == "ShowMovieDetailSegue" {
			if let indexPath = tableView.indexPathForSelectedRow,
				let movieDetailVC = segue.destination as? MovieDetailViewController {
				movieDetailVC.movie = movies[indexPath.row]
			}
		}
	}
}

extension AddMovieViewController: AddMovieDelegate {
	
}
