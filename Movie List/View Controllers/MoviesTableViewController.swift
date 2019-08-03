//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Fabiola S on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {
    
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    
    var movies: [Movie] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Navigation

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }


}

extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
    
    
}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
    
    
}
