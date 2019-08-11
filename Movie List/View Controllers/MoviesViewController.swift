//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Bobby Keffury on 8/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit




class MoviesViewController: UIViewController {
    
    // Table view outlet
    @IBOutlet weak var moviesTableView: UITableView!
    
    
    // Variable to reference the movie struct we created in the model.
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        moviesTableView.delegate = self
        moviesTableView.dataSource = self

        
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovieSegue" {
            if let addMovieVC = segue.destination as? AddMoviesViewController {
                addMovieVC.delegate = self 
            }
        }
    }
    

}

extension MoviesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
}

extension MoviesViewController: AddMoviesDelegate {
    func movieWasCreated(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        moviesTableView.reloadData()
    }
}

