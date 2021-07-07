//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by macbook on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {
    
    var movies: [Movie] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
}


// Extension to conform to the UITableViewDataSource protocol
extension MoviesTableViewController: UITableViewDataSource, UITableViewDelegate {
    
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

// Extension to conform to the AddPOIDelegateprotocol
extension MoviesTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}
