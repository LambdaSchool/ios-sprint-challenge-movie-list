//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Alex Thompson on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    
    var movies: [Movie] = []
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SuckOnTheseNuts" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        guard let movieCell = cell as? MovieTitleTableViewCell else {return cell}
        
        let movie = movies[indexPath.row]
        movieCell.movie = movie
        
        movieCell.delegate = self
        
        return cell
    }

}
extension MoviesTableViewController: MovieTitleTableViewDelegate{
func seenNotSeenWasTapped(cell: MovieTitleTableViewCell) {
    
    guard let movie = cell.movie else {return}
    
    guard let index = movies.firstIndex(of: movie) else {return}
    movies[index].isSeen = !movie.isSeen
    
    tableView.reloadData()
    
}

}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasCreated(_ movie: Movie) {
        movies.append(movie)
        navigationController?.popViewController(animated: true)
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    
    
}

