//
//  MovieListTableViewController.swift
//  MovieList
//
//  Created by Bradley Yin on 7/19/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import UIKit
import SwipeCellKit

class MovieListTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var movies : [Movie] = []

    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
    }

    

}
extension MovieListTableViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        cell.movie = movies[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        movies[indexPath.row].haveSeen = !movies[indexPath.row].haveSeen
        print(movies[indexPath.row].haveSeen)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        options.expansionStyle = .destructive
        options.transitionStyle = .border
        return options
    }
    
    
    
}
extension MovieListTableViewController: AddMovieDelegate{
    func newMovieAdded(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
        self.navigationController?.popViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieShowSegue"{
            guard let addMovieVC = segue.destination as? AddMovieViewController else {return}
            addMovieVC.delegate = self
        }
    }
}
