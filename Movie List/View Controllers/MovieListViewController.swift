//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 11/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }
    

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            guard let destinationVC = segue.destination as? AddMovieViewController else { return }
            
            destinationVC.delegate = self
        }
    }
    

}

extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { fatalError("Can't dequeue a MovieTableViewCell") }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        return cell
    }
    
    
}

extension MovieListViewController: UITableViewDelegate {
    
}

extension MovieListViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    
}
