//
//  MovieTableViewController.swift
//  MovieList
//
//  Created by Rohan Taylor on 12/13/19.
//  Copyright © 2019 Rohan Taylor. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            
            if let destinationVC = segue.destination as? MovieViewController {
                destinationVC.delegate = self
            }
        }
    }
}

extension MovieTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieCellInfo else {
            
            fatalError()
            
        }
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
}
extension MovieTableViewController : MovieDelegate {
    
    func newMovie(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}

