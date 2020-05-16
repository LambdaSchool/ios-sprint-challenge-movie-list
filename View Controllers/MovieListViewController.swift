//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Bryan Cress on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {

 
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = [Movie(name: "Hitchhikers Guide To The Galaxy")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

 
        tableView.dataSource = self
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ModalNewMovie" {
            
            let newFriendVC = segue.destination as? AddNewMovieViewController
            
            newFriendVC?.delegate = self
        }
    }
}

    
    // MARK: - Navigation

extension MovieListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
            fatalError("Cell identifier is wrong or the cell is not of expected type MovieTableViewCell")
        }
        
        
        let movie = movies[indexPath.row]
        
        cell.movielLabel.text = movie.name
        
        return cell
    }
}


extension MovieListViewController: AddMovieDelegate {
    func movieWasCreated(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}
