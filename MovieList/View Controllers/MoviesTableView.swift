//
//  ViewController.swift
//  MovieList
//
//  Created by Waseem Idelbi on 2/9/20.
//  Copyright © 2020 Waseem Idelbi. All rights reserved.
//

import UIKit

class MoviesTableView: UIViewController {
    
    //MARK: -Outlets and Actions-
    @IBOutlet var tableView: UITableView!
    let movieContoller = MovieController()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovie {
                addMovieVC.movieController = movieContoller
                addMovieVC.delegate = self
            }
        }
    }
}


//MARK: -extensions-
extension MoviesTableView: AddMovieDelegate {
    func movieWasAdded(movie: Movie) {
        tableView.reloadData()
    }
}

extension MoviesTableView: MovieSeenDelegate {
    func updateSeenProperty(movie: Movie) {
        movieContoller.update(movie: movie, seen: !movie.seen)
        print(movie.seen)
        tableView.reloadData()
    }
    
}

extension MoviesTableView: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieContoller.movieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let movie = movieContoller.movieArray[indexPath.row]
        print(movie.seen)
        cell.movie = movie
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let movie = movieContoller.movieArray[indexPath.row]
            movieContoller.delete(movie: movie)
        }
        tableView.reloadData()
    }
    
}




