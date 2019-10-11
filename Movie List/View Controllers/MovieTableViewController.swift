//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Thomas Bernard Leonard II on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
}

extension MovieTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        return movie
    }
}

extension MovieTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}
