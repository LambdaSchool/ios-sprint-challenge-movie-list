//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_218 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieWasAddedDelegate: class {
    func updateHasSeen(movie: Movies)
}

class MovieListViewController: UIViewController,MovieWasAddedDelegate  {
    
    let movieController = MovieController()
    
    func updateHasSeen(movie: Movies) {
        guard let indexPath = tableView.indexPath(for: movie) else { return }
        let hasSeen = movieController.movie[indexPath.row]
        
        movieController.hasSeen(seen: hasSeen)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }

    @IBOutlet weak var movieTitle: UILabel!
    
    
     override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBOutlet weak var tableView: UITableView!
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieBtn" {
            guard let destinationVC = segue.destination as? AddMovieViewController else { return }
            
            destinationVC.movieController = movieController 
        }
    }
    

}
extension MovieListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { fatalError("Error with the cell") }
        
        
        let movie = movieController.movie[indexPath.row]
        
        cell.movie = movie
        
        
        return cell
    }
    
}
