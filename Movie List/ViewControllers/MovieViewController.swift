//
//  MovieViewController.swift
//  Movie List
//
//  Created by Claudia Contreras on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    //IBOutlets
    @IBOutlet var tableView: UITableView!
    
    //Properties
    var movies: [Movie] = [Movie(name: "Harry Potter", hasSeen: true)]
    
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
        cell.delegate = self as? SeenButtonTappedDelegate
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovieSegue" {
            let addMovieVC = segue.destination as! AddMovieViewController
            addMovieVC.delegate = self
        }
    }
}

extension MovieViewController: AddMovieDelegate {
    func movieWasCreated(_ movie: Movie) {
        self.movies.append(movie)
        tableView.reloadData()
        self.navigationController!.viewControllers.remove(at: 1)
    }
}

extension MovieViewController: SeenButtonTappedDelegate {
    func seenButtonTappedCell(_ MovieTableViewCell: MovieTableViewCell, seenButtonTappedFor movie: Movie) {
        
        let indexPath = self.tableView.indexPath(for: MovieTableViewCell)
        print(indexPath!.row)
        if movie.hasSeen {
            //change the hasSeen property
            movies[indexPath!.row].hasSeen = false
            print(movie)
            tableView.reloadData()
        } else {
            movies[indexPath!.row].hasSeen = true
            print(movie)
            tableView.reloadData()
        }
    }
    
    
}
