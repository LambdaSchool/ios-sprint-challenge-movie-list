//
//  MovieViewController.swift
//  Movie List
//
//  Created by Brandi on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
        var movies: [Movie] = []

        override func viewDidLoad() {
            super.viewDidLoad()


            // Do any additional setup after loading the view.
        }
        
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
      
            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "AddMovieSegue" {
                    if let addMovieVC = segue.destination as? AddMovieViewController {
                        addMovieVC.delegate = self
                    }
                } else if segue.identifier == "ShowMovieDetailSegue" {
                    if let indexPath = tableView.indexPathForSelectedRow,
                        let movieDetailVC = segue.destination as?
                            MovieDetailViewController {
                        movieDetailVC.movie = movies[indexPath.row]
                    }
                }
            }
    }


    extension MoviesViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return movies.count
        }
        
        internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as?
                MovieTableViewCell else { return UITableViewCell() }
            
            let movie = movies[indexPath.row]
            cell.movie = movie
            
            return cell

        }
    }

    extension MoviesViewController: AddMovieDelegate {
        func movieWasAdded(_ movie: Movie) {
            movies.append(movie)
            if let navController = self.navigationController {
                navController.popToRootViewController(animated: true)
            }
            tableView.reloadData()
        }

}
