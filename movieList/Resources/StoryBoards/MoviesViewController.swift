//
//  MoviesViewController.swift
//  movieList
//MovieTableViewController
//  Created by Marissa Gonzales on 4/17/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {

    @IBOutlet weak var seenNotSeenButton: UIButton!
    @IBOutlet weak var myMoviesTableView: UITableView!
    
    var myMovies: [Movie] = [Movie(name: "Joe Dirt", seenOrNot: true)]
    
    override func viewDidLoad() {
        myMoviesTableView.dataSource = self
        
        super.viewDidLoad()
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "addMovieSegue" {
            
            guard let newMovieVC = segue.destination as? AddMovieViewController else { return }
            newMovieVC.delegate = self
        }
    }
}
extension MoviesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        myMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyMovieCell", for: indexPath) as? MovieTableViewCell
            else { fatalError("Not a My Movie Cell") }
        
        let movie = myMovies[indexPath.row]
        
        cell.movieTableViewCell.text = movie.name 
        
        return cell
    }
}





extension MoviesViewController: NewMovieDelegate {
    func addedAMovie(movie: Movie) {
        myMovies.append(movie)
        myMoviesTableView.reloadData()
    }
}
