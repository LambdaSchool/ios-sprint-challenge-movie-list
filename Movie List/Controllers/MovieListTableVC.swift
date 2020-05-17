//
//  MovieListTableVC.swift
//  Movie List
//
//  Created by Jeffrey Santana on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableVC: UITableViewController {
	private var movies = [Movie]()
	private var moviePath: (movie: Movie, indexPath: IndexPath)?

    override func viewDidLoad() {
        super.viewDidLoad()
		
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		moviePath = nil
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let addMovieVC = segue.destination as? ManageMovieVC {
			addMovieVC.delegate = self
			addMovieVC.moviePath = moviePath
		}
		
	}
	
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieCell else {return UITableViewCell()}
		let movie = movies[indexPath.row]

		cell.delegate = self
		cell.configCellWith(movie: movie, indexPath: indexPath)

        return cell
    }
	
	override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
		let edit = UIContextualAction(style: .normal, title: "Edit") { (action, view, handler) in
			self.moviePath = (self.movies[indexPath.row], indexPath)
			self.performSegue(withIdentifier: "AddMovieSegue", sender: nil)
		}
		
		edit.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
		
		return UISwipeActionsConfiguration(actions: [edit])
	}
	
	override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
		let delete = UIContextualAction(style: .destructive, title: "Delete") { (action, view, handler) in
			self.movies.remove(at: indexPath.row)
			tableView.deleteRows(at: [indexPath], with: .automatic)
			handler(true)
		}
		
		return UISwipeActionsConfiguration(actions: [delete])
	}

}

//MARK: - Add Movie Delegate

extension MovieListTableVC: ManageMovieVCDelegate {
	func update(movie: Movie, listIndex: Int?) {
		if let index = listIndex {
			movies[index] = movie
		} else {
			movies.append(movie)
		}
		dismiss(animated: true, completion: nil)
		tableView.reloadData()
	}
}

//MARK: - Movie Cell Delegate

extension MovieListTableVC: MovieCellDelegate {
	func toogleIsSeen(movie: Movie, listIndex: Int) {
		movies[listIndex].isSeen.toggle()
		tableView.reloadData()
	}
}
