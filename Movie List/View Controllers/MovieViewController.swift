//
//  MovieViewController.swift
//  Movie List
//
//  Created by Ian Becker on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    
    var movies: [Movie] = [Movie(name: "Good Burger")]
    
    @IBOutlet weak var movieTableView: UITableView!
    @IBOutlet var movieViewController: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            
        }
    }
}

extension MovieViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
            fatalError("Cell identifier is wrong, or cell is not part of expected type MovieTableViewCell.")
        }
        
        let movie = movies[indexPath.row]
        
        cell.movieLabel.text = movie.name
        
        return cell
    }
    
}

extension MovieViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)

    }
}
