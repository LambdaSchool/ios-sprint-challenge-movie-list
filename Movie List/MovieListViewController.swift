//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Chris Dobek on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = [Movie(title: "Frozen", seen: false)]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
}
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            guard let newMovieVC = segue.destination as? AddNewMovieViewController else { return }
            
            newMovieVC.delegate = self
        }
    }

}

extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
            fatalError("Cell is not a MovieTableViewCell")
        }
        
        let movie = movies[indexPath.row]
        cell.titleLabel.text = movie.title
        
        return cell
    }
}

extension MovieListViewController: NewMovieDelegate {
    func movieWasAdded(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
    
    
}
