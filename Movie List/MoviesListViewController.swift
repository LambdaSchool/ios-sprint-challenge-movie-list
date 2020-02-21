//
//  MoviesListViewController.swift
//  Movie List
//
//  Created by Wyatt Harrell on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var movies: [Movie] = [Movie(name: "No Time To Die", hasSeen: false)]


    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
//        let defaults = UserDefaults.standard
//        defaults.set(movies, forKey: "movies")

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        cell.delegate = self
        cell.index = indexPath
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()

        }
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "ShowAddMovie" {
            guard let AddMovieVC = segue.destination as? AddMovieViewController else { return }
            AddMovieVC.delegate = self
        } else if segue.identifier == "ShowChangeTitle" {
            guard let ChangeTitleVC = segue.destination as? ChangeMovieTitleViewController else { return }
            
            ChangeTitleVC.delegate = self
        }
    }
    

}

extension MoviesListViewController: AddMovieDelegate {
    func addMovie(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}

extension MoviesListViewController: hasSeenButtonDelegate {
    func hasSeenButtonTapped(index: Int) {
        
        if movies[index].hasSeen {
            movies[index].hasSeen = false
        } else {
            movies[index].hasSeen = true
        }
        print("Movie: \(movies[index].name) || Has Seen: \(movies[index].hasSeen)")
        
    }
}

extension MoviesListViewController: ChangeMovieTitleDelegate {
    func changeMovieTitle(title: String) {
        guard let selectedRow = tableView.indexPathForSelectedRow else { return }
        movies[selectedRow.row].name = title
        tableView.reloadData()
    }
    
    
}
