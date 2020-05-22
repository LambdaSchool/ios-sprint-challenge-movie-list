//
//  MovieViewController.swift
//  Movie List
//
//  Created by Ian Becker on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    
    var movies: [Movie] = []
    
    @IBOutlet weak var movieTableView: UITableView!
    @IBOutlet var movieViewController: UIView!
    @IBOutlet weak var movieLabel: UILabel!
    @IBAction func tappedAddMove(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            guard let movieVC = segue.destination as? AddMovieViewController else { return }
            
            movieVC.delegate = self
        }
    }
}

extension MovieViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieTableViewCell else { fatalError("Table view cell identifier is wrong or the cell is not a MovieTableViewCell")}
        
        let movie = movies[indexPath.row]
//        let movie = movies[indexPath.row]
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieTableViewCell
//
        cell.update(with: movie)
//
        cell.movieLabel.text = movie.name
//
//        cell.delegate = self
        
        tableView.dataSource = self
        
        return cell
        

    }
    
}

extension MovieViewController: AddMovieDelegate {
    func movieWasAdded(movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        movieTableView.reloadData()
    }
}

//}
//
//extension MovieViewController: movieTableViewCellDelegate {
//    func didTapSeenButton(for cell: MovieTableViewCell) {
//
//    }
//}
