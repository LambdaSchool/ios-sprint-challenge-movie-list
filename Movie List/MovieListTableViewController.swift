//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by beth on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController, AddMovieDelegate {
   
    

    
    var movies: [Movie] = []
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
        
       }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return movies.count
       }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { fatalError() }

           let movie = movies[indexPath.row]
           cell.movie = movie
           return cell
       }

    // MARK: - Navigation

   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "AddMovie" {
               if let addMovieVC = segue.destination as? AddMovieViewController {
                   addMovieVC.delegate = self
               }
           }
       }

}
