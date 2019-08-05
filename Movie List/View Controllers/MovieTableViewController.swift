//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Eoin Lavery on 05/08/2019.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    //TableView and Movie array declaration
    @IBOutlet weak var tableView: UITableView!
    var movieList: [Movie] = []
    
    //String Identifiers
    let movieCellReuseIdentifier: String = "MovieCell"
    let addMovieSegueIdentifier: String = "AddMovieModalSegue"
    let detailMovieSegueIdentifier: String = "MovieDetailShowSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == addMovieSegueIdentifier {
            guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
            addMovieVC.delegate = self
        } else if segue.identifier == detailMovieSegueIdentifier {
            guard let detailVC = segue.destination as? MovieDetailViewController,
                    let selectedIndexPath = tableView.indexPathForSelectedRow else { return }
                    let movie = movieList[selectedIndexPath.row]
                    detailVC.movie = movie
                    detailVC.movieIndex = selectedIndexPath.row
                    detailVC.delegate = self
        }
    }

}

//Extends the MovieTableViewController class to conform with UITableView DataSource and Delegate
extension MovieTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: movieCellReuseIdentifier, for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movieList[indexPath.row]
        cell.movie = movie
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            movieList.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
}

//Extends the MovieTableViewController class to conform with the AddMovieDelegate
extension MovieTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movieList.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}

//Extends the MovieTableViewController class to conform with the MovieCellDelegate
extension MovieTableViewController: MovieCellDelegate {
    
    func didUpdateSeenStatus(cell: MovieTableViewCell) {
        guard let indexPath = self.tableView.indexPath(for: cell)?.row else { return }
        movieList[indexPath].hasBeenSeen.toggle()
        tableView.reloadData()
    }
}

//Extends the MovieTableViewController class to conform with the MovieDetailDelegate
extension MovieTableViewController: MovieDetailDelegate {
    
    func thoughtsDidChange(_ thoughts: String, _ index: Int) {
        movieList[index].thoughts = thoughts
        tableView.reloadData()
    }
}
