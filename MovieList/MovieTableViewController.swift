//
//  MovieTableViewController.swift
//  MovieList
//
//  Created by Sherene Fearon on 4/17/20.
//  Copyright © 2020 Quwayne Brown. All rights reserved.
//

import UIKit


class MovieTableViewController: UITableViewController {

   
    var movies: [Movie] = []
    
    
    var delegate: NewMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//    tableView.delegate = self
//    tableView.dataSource = self
        
    }
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movies.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieCellTableViewCell  else { return UITableViewCell() }

       let movie = movies[indexPath.item]
        
        cell.movieLabel.text = movie.name
        cell.backgroundColor = .blue
        
        
        
      
        
        
        return cell
    }

}


extension MovieTableViewController: NewMovieDelegate {
    func movieAdded(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}
//
//extension MovieTableViewController: HasBeenSeen {
//    func buttonTapped(button: UIButton) {
//        switch
//    }
//
//
//}
//
