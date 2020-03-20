//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Mark Poggi on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies = [MOVIE]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
    }
    
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destination.
        
        if segue.identifier == "AddMovieSegue" {
            
            guard let newMovieVC = segue.destination as? AddMovieViewController else { return }
            
            // sets up this view controller to receive the information passed from the newFriendVC using ther delegate pattern
            
            newMovieVC.delegate = self
            
        }
        
    }
}


extension AddMovieViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as? MovieTableViewCell else {
            fatalError()
        }
        
        let movie = movies[indexPath.row]
        
        cell.movieLabel.text = movie.
    }
}
