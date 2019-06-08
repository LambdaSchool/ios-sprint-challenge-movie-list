//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Kat Milton on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController, UITableViewDataSource, MovieTableViewCellDelegate {
    
    
    // MARK: - Outlets and Properties
    @IBOutlet var movieTable: UITableView!
    var movieController = MovieController()

    override func viewDidLoad() {
        super.viewDidLoad()
//        loadList()
        self.movieTable.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.movieTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        
        guard let movieCell = cell as? MovieTableViewCell else { return cell}
        let movie = movieController.movies[indexPath.row]
        movieCell.movie = movie
        movieCell.delegate = self
        
        return movieCell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let movieName = self.movieController.movies[indexPath.row]
            self.movieController.deleteMovie(movieToDelete: movieName)
            tableView.deleteRows(at: [indexPath], with: .left)
        }
    }
    
    func addMovie(on cell: MovieTableViewCell) {
        guard let index = movieTable.indexPath(for: cell.self) else { return }
        print(movieController.movies)
        self.movieTable.reloadRows(at: [index], with: UITableView.RowAnimation.automatic)
    }
 
    func seenButtonTapped(on cell: MovieTableViewCell) {
        guard let movieSeen = cell.movie?.seen else { return }
        
        guard let index = movieTable.indexPath(for: cell.self) else { return }
        
        if movieSeen == true {
            movieController.toggleSeen(for: cell.movie!)
        } else if movieSeen == false {
            movieController.toggleSeen(for: cell.movie!)
        } else {
            return
        }
        self.movieTable.reloadRows(at: [index], with: UITableView.RowAnimation.fade)
    }
    
//    private func loadList() {
//
//        var indexPathsToReload = [IndexPath]()
//
//        for row in movieController.movies.indices {
//                print(row)
//            let indexPath = IndexPath(index: row)
//                indexPathsToReload.append(indexPath)
//            print(movieController.movies)
//
//        }
//    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovie" {
            guard let movieDetailVC = segue.destination as? AddMovieViewController else { return }
            movieDetailVC.movieController = movieController
        }
        
    }
 

}
