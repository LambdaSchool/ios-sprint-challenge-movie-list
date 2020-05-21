//
//  ListMoviesViewController.swift
//  Movie List
//
//  Created by Mike Nichols on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


class ListMoviesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            let addMovieVC = segue.destination as? AddMovieViewController
        }
    }
    */

}

extension ListMoviesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MoviesListTableViewCell else {
            fatalError("Cell identified is wrong or the cell is not of expected type MoviesListTableViewCell")
        }
        
        let movie = moviesList[indexPath.row]
        
        cell.movieLabel.text = movie.title
        cell.seenSwitch.isOn = movie.haveSeen
        
        return cell
        
    }
    
}

