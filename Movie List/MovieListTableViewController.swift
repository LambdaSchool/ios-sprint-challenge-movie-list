//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_241 on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController, ButtonDelagate {
    
    // Mark - IBOutlets
    @IBOutlet weak var movieTableView: UITableView!
    
    // Mark - Properties
    var movieController = MovieController()
    
    func buttonToggle(_ cell: MovieTableViewCell) {
        guard let index = movieTableView.indexPath(for: cell) else { return }
        
        let m = movieController.moviesArray[index.row]
        movieController.updateMovie(m)
        movieTableView.reloadRows(at: [index], with: .automatic)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.movieTableView.delegate = self
        self.movieTableView.dataSource = self
    }
    
}

extension MovieListTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.moviesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewMovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let f = movieController.moviesArray[indexPath.row]
        
        cell.film = f
        cell.del = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let movie = movieController.moviesArray[indexPath.row]
            movieController.deleteMovie(movie)
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            let addMovieVC = segue.destination as! AddNewMovieViewController
            
            addMovieVC.delegate = self
        }
    }
    
    
    
    
}

extension MovieListTableViewController: AddMovieDelegate {
    func MovieWasCreated(_ mov: Movie) {
        self.movieController.moviesArray.append(mov)
        movieTableView.reloadData()
    }
    
    
}



extension MovieListTableViewController: UITableViewDelegate {
    
}





