//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Mark Gerrior on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController,
                            UITableViewDelegate,
                            UITableViewDataSource, AddMovieDelegate {
    
    @IBOutlet weak var movieTableView: UITableView!
    
    var movies: [Movie] = [Movie(title: "Pulp Fiction", seen: true),
                           Movie(title: "Parasite")]

    func movieWasCreated(_ movie: Movie) {
        movies.append(movie)
        movieTableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Configure the cell...
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { fatalError("Error!") }

        let movie = movies[indexPath.row]
        
        // Will automatically call updateViews() and set labels' text
        cell.movie = movie

        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // No need, this was done in the storyboard
//        movieTableView.delegate = self
//        movieTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "AddMovie" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else {return}
            addMovieVC.delegate = self
        }
    }
}
