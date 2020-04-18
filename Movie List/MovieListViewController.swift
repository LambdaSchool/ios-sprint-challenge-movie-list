//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Kenneth Jones on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, AddMovieDelegate, EditMovieDelegate {
    
    var movies: [Movie] = []
    var movieToEdit: Int = 0
    
    @IBOutlet weak var tableView: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            if let addVC = segue.destination as? AddMovieViewController {
                addVC.delegate = self
            }
        } else if segue.identifier == "EditMovieSegue" {
            if let editVC = segue.destination as? EditMovieViewController,
                let indexPath = self.tableView.indexPathForSelectedRow {
                movieToEdit = indexPath.row
                editVC.movie = movies[indexPath.row]
                editVC.delegate = self
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
            as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func newMovieAdded(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
    
    func movieEdited(movie: Movie) {
        movies[movieToEdit] = movie
        tableView.reloadData()
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }

}
