//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by David Wright on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var tableView: UITableView!
    
    // MARK: - Properties
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            // Get the new view controller using segue.destination.
            if let addMovieVC = segue.destination as? AddMovieViewController {
                // Pass the selected object to the new view controller.
                addMovieVC.delegate = self
            }
        }
    }

}

extension MoviesTableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        cell.movie = movies[indexPath.row]
        cell.delegate = self
        cell.indexPath = indexPath
        
        return cell
    }
}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        //dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}

extension MoviesTableViewController: MovieCellDelegate {
    func seenMovieButtonWasTapped(_ movieCell: MovieTableViewCell) {
        if let hasSeenMovie = movieCell.movie?.hasBeenSeen,
            let index = movieCell.indexPath?.row {
            movies[index].hasBeenSeen = hasSeenMovie
        }
    }
}
