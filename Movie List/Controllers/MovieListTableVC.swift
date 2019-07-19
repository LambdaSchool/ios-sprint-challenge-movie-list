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

    override func viewDidLoad() {
        super.viewDidLoad()
		
    }
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let addMovieVC = segue.destination as? AddMovieVC {
			addMovieVC.delegate = self
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

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

}

//MARK: - Add Movie Delegate

extension MovieListTableVC: AddMovieVCDelegate {
	func addedNew(movie: Movie) {
		movies.append(movie)
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
