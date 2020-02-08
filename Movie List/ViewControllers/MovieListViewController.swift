//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Niranjan Kumar on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }

}


extension MovieListViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
    
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        cell.delegate = self
    
        return cell
    }
    
    
}



extension MovieListViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
        
    }
    
    
}

extension MovieListViewController: MovieSeen {
    func buttonToggled(_ cell: MovieTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        var movie = movies[indexPath.row]
        movie.hasBeenSeen = !movie.hasBeenSeen
        movies[indexPath.row] = movie
        tableView.reloadRows(at: [indexPath], with: .automatic)

    }
    
    
}
