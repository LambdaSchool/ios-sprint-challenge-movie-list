//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_254 on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

   import UIKit

    class MovieListTableViewController: UIViewController {
        
        @IBOutlet weak var movieTableView: UITableView!
        
        var movies = [Movie]()
        
        override func viewDidLoad() {
            super.viewDidLoad()

        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
               if segue.identifier == "AddMovieModalSegue" {
                   if let addMovieVC = segue.destination as? AddMovieViewController {
                       addMovieVC.delegate = self
                }
            }
        }
    }
            
extension MovieListTableViewController: UITableViewDataSource {
    func tableView(_ movieTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ movieTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = movieTableView.dequeueReusableCell(withIdentifier: "movieTitleCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
}

extension MovieListTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        movieTableView.reloadData()
    }
}

