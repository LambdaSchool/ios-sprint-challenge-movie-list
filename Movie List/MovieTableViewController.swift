//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Bradley Diroff on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
        if segue.identifier == "addMovieSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else {return}
            addMovieVC.delegate = self
            
        }
    }

}

extension MovieTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
    
    
}

extension MovieTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
    
    
}
