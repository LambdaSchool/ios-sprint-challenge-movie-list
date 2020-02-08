//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Breena Greek on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController {
 
    var movie: Movie
    
    // MARK: IBoutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
     
    }
}
extension MovieListTableViewController: UITableViewDelegate {
    
}
extension MovieListTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Movie Content", for: indexPath) as? MovieListTableViewCell else { return UITableViewCell() }
        
        let movies = movie[indexPath.row]
        cell.movie = movie
        return cell
    }
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "AddMovieModalSegue" {
             let addMovieVC = segue.destination as! AddMovieViewController
             
             addMovieVC.delegate = self
    
        }
    }
}
extension MovieListTableViewController: AddMovieDelegate {
    func MovieWasCreated(_ movies: Movie) {
    movie.append(movies)
    tableView.reloadData()
    
    }
}
