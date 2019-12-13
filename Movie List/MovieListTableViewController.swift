//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Michael on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController {

    
    var movies: [Movie] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
            addMovieVC.delegate = self
        }
    }
    

}

extension MovieListTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieListTableViewCell else { fatalError("This cell is not a MovieCell.")}
        
        let movie = movies[indexPath.row]
        cell.movieTitle = movie
        
        
        return cell
    }
    
    
}

extension MovieListTableViewController: AddMovieDelegate {
    func movieWasAdded(movie: Movie) {
        movies.append(movie)
        dismiss(animated: false, completion: nil)
        tableView.reloadData()
    }
}
