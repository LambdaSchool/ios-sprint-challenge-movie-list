//
//  MovieTabelViewController.swift
//  Movie List
//
//  Created by Josh Kocsis on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTabelViewController: UIViewController { 
    
    @IBOutlet weak var movieTableView: UITableView!
    
    var newMovie: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddNewMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
}

extension MovieTabelViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newMovie.count
       }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MoiveTitle", for: indexPath) as? MovieTableViewCell else { return MovieTableViewCell() }
        
        let movie = newMovie[indexPath.row]
        cell.newMovie = movie
        
        return cell
    }
}

extension MovieTabelViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        newMovie.append(movie)
        movieTableView.reloadData()
    }
}
