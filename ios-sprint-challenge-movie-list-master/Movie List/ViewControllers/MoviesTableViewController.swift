//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by J-Skenandore on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var movie: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let selectedMovie = movie[indexPath.row]
        
        cell.movie = selectedMovie
        
        return cell
    }
}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movieInstance: Movie) {
        movie.append(movieInstance)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
    
}
