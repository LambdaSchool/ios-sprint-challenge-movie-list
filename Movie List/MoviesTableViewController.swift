//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Christian Lorenzo on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    
    var movies = ["Matrix", "Terminator"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        guard let movieCell = cell as? MovieTableViewCell else {return cell}
        
        let movie = movies[indexPath.row]
        //movieCell.movie = movies[indexPath.row]
        cell.movie = movie
        movieCell.delegate = self
        
        
        return cell
    }

}

extension MoviesTableViewController: MovieTableViewCellDelegate {
    func seenNotSeenWasTapped(cell: MovieTableViewCell) {
        
        let messageBool = cell.seenNotSeenButton.titleLabel?.text!
        
        cell.seenNotSeenButton.setTitle("Seen", for: [])
    }
    
    
}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasCreated(_ movie: Movie) {
        
        movies.append()
        
    }
    
    
}
