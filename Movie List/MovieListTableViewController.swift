//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by alfredo on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController {

	@IBOutlet weak var movieTableView: UITableView!

		var movies: [Movie] = []

		override func viewDidLoad() {
			super.viewDidLoad()
				movieTableView.delegate = self
				movieTableView.dataSource = self
		}


	// MARK: - Navigation

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "addMovieSegue"{
			if let addMovieVC = segue.destination as? AddMovieViewController{
				addMovieVC.delegate = self
			}
		}
	}
}
extension MovieListTableViewController: UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return movies.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieTableViewCell else { return UITableViewCell() }

		let movie = movies[indexPath.row]
			cell.movie = movie

			return cell
	}
}

extension MovieListTableViewController: AddMovieDelegate {
	func movieWasCreated(_ movie: Movie) {
		movies.append(movie)
			//updating array we created above
			dismiss(animated: true, completion: nil)
			movieTableView.reloadData()
			print(movies)
	}
}
