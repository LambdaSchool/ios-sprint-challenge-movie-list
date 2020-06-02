//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Sam Gutierrez on 5/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {
 
    var movies: [Movie] = []
    
    @IBOutlet weak var MovieTableView: UITableView!
    

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "AddingMovieSegue" {
        if let addMovieVC = segue.destination as? AddingMovieViewController {
            addMovieVC.delegate = self
        }
    }
}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        MovieTableView.delegate = self
        MovieTableView.dataSource = self
        
        
        
    }
}

// Setting up a TableView on a UIVIewController
// Step 1: Add ViewController as Data Source
// Step 2: Adopt and comform to UITableViewDataSource

extension MoviesTableViewController: UITableViewDelegate{
}

extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = MovieTableView.dequeueReusableCell(withIdentifier: "NewMovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        
        cell.MovieTitleLabel.text = movies[indexPath.row].name
        
        return cell
        
    }
}

// Delegate
// Adopt and Confom to the delegate

extension MoviesTableViewController: AddMovieDelegate {
    func newMovieAdded(movie: Movie) {
        movies.append(movie)
        MovieTableView.reloadData()
    }
}
