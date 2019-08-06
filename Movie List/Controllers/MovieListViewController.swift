//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Clayton Bonaguidi on 8/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies = [Movie]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
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
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}

extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieListTableViewCell else { return UITableViewCell() }
        cell.movieMade = movies[indexPath.row]
        cell.delegate = self
        return cell
    }
}

extension MovieListViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        navigationController?.popViewController(animated: true)
        tableView.reloadData()
    }
}

extension MovieListViewController: movieListTableViewDelegate {
    func seenButtonPressed(cell: MovieListTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else {
            return }
        
        if movies[indexPath.row].hasSeen {
            cell.notSeenButton.setTitle("Not Seen", for: .normal)
            movies[indexPath.row].hasSeen = false
        } else {
                cell.notSeenButton.setTitle("Seen", for: .normal)
                movies[indexPath.row].hasSeen = true
                }
            }
        }



