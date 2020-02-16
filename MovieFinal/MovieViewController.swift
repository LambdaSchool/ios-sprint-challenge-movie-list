//
//  MovieViewController.swift
//  MovieFinal
//
//  Created by Jarren Campos on 2/15/20.
//  Copyright © 2020 Jarren Campos. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var tableView: UITableView!
    
    var movies: [Movie] = [
        Movie(name: "1917", hasSeen: true),
        Movie(name: "Batman", hasSeen: true)
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
}

//Extensions
extension MovieViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        let movie = movies[indexPath.row]
        cell.movie = movie
        cell.delegate = self as? SeenButtonDelegate
        
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("Deleted")
            
            self.movies.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovie" {
            let addMovieVC = segue.destination as! AddMovieViewController
            addMovieVC.delegate = self
        }
    }
}

extension MovieViewController: AddMovieDelegate {
    func createMovie(_ movie: Movie) {
        self.movies.append(movie)
        tableView.reloadData()
    }
}

extension MovieViewController: SeenButtonDelegate {
    func seenButton(_ MovieTableViewCell: MovieTableViewCell, seenButtonTappedFor movie: Movie) {
        
        let indexPath = self.tableView.indexPath(for: MovieTableViewCell)
        
        if movie.hasSeen {
            movies[indexPath!.row].hasSeen = false
            tableView.reloadData()
        } else {
            movies[indexPath!.row].hasSeen = true
            tableView.reloadData()
        }
    }
}
