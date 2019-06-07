//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Marlon Raskin on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {

	
	@IBOutlet var tableView: UITableView!
	let movieController = MovieController()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		tableView.delegate = self
		tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "AddMovieSegue" {
			guard let destinationVC = segue.destination as? AddMovieViewController else { return }
			destinationVC.movieController = movieController
		}
    }
}

extension MovieListViewController: UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return movieController.movies.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
		
		let movie = movieController.movies[indexPath.row]
		cell.movieTitleLabel.text = movie.movieTitle
		cell.delegate = self
		return cell
	}
}

extension MovieListViewController: MovieTableViewCellDelegate {
	func seenButtonWasTapped(on cell: MovieTableViewCell) {
		if let indexPath = tableView.indexPath(for: cell) {
			movieController.toggleHasSeen(for: movieController.movies[indexPath.row])
			tableView.reloadRows(at: [indexPath], with: .automatic)
		}
	}
}
