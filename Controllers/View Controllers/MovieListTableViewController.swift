//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Nonye on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


class MovieListTableViewController: UIViewController {
    

    @IBOutlet var tableView: UITableView!
    
    @IBOutlet weak var seenOptionButton: UIButton!
    
    
    var movies: [Movies] = [Movies(movieName: "Superbad", movieSeen: true)]
    
    override func viewDidLoad() {
        tableView.dataSource = self
        super.viewDidLoad()
        
      
    }
    //MARK: - botton or top
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "MovieListSegue" {
                guard let addMovieVC = segue.destination as? NewMovieViewController else { return }
                addMovieVC.delegate = self
            }
        }
        

    }
    // MARK: - Table view data source

    
        
    extension MovieListTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        let movieCell = movies[indexPath.row]
        cell.movieLabel.text = movieCell.movieName
        return cell
    }
    
    
        }
   
    
    // MARK: - Navigation

 
extension MovieListTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movies) {
        movies.append(movie)
        tableView.reloadData()
      
    }
}


