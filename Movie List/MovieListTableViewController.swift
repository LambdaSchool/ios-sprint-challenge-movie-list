//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_254 on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController, AddMovieDelegate {
    
    

    var movies: [Movie] = []
    
    @IBOutlet weak var movieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func movieWasAdded(_ movie: Movie) {
           movies.append(movie)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
              guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieTitleCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell()}

              let movieTitle = movies[indexPath.row]
        cell.movieTitleLabel.text = movieTitle.movieTitle
        
        return cell
    
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue"{
                   guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
                   
                   addMovieVC.delegate = self
    }
        
}    
}
