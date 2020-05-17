//
//  MovieViewController.swift
//  Movie List
//
//  Created by Ian Becker on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    
    var movies: [Movie] = [Movie(name: "Good Burger")]
    
    @IBOutlet weak var movieTableView: UITableView!
    @IBOutlet var movieViewController: UIView!
    @IBOutlet weak var movieLabel: UILabel!
    @IBAction func tappedAddMove(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            
        }
    }
}

extension MovieViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let movie = movies[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieTableViewCell
        
        cell.update(with: movie)
        
        cell.movieLabel.text = movie.name
        
        cell.delegate = self 
        
        return cell
        
        tableView.dataSource = self
    }
    
}

extension MovieViewController: AddMovieDelegate {
    func movieWasAdded(_ viewcontroller: AddMovieViewController, didUpdateMovie movie: String) {
        movieLabel.text = movie
    }
    

}

extension MovieViewController: movieTableViewCellDelegate {
    func didTapSeenButton(text: String) {
        <#code#>
    }
}
