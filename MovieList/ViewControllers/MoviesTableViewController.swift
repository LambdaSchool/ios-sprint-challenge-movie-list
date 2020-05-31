//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Gladymir Philippe on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var movie: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            if let addMovieVC = segue.destination as? AddMoviesViewController {
                addMovieVC.delegate = self
            }
        }
    }
}

extension MoviesTableViewController: UITableViewDelegate {
    
}

extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return movie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
    
        let selectedMovie = movie[indexPath.row]
        cell.movie = selectedMovie
    return cell
    }
}

func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        tableView.reloadData()
    }

extension MoviesTableViewController: addMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        self.movie.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}
