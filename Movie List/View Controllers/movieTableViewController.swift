//
//  movieTableViewController.swift
//  Movie List
//
//  Created by Alex Rhodes on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class movieTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movieArray: [Movie] = []
}
    

extension movieTableViewController: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? movieTableViewCell
            
            else { return UITableViewCell()}
        
        let movies = movieArray[indexPath.row]
        cell.movie = movies
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovieModelSeque" {
            if let addMovieVC = segue.destination as? addMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
}

extension movieTableViewController: addMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movieArray.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
}
}
