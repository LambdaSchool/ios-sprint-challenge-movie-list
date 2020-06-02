//
//  movieTableViewVC.swift
//  Movie List
//
//  Created by Norlan Tibanear on 5/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class movieTableViewVC: UIViewController {
    
    // Outlets
    @IBOutlet var tableView: UITableView!
    
    // Variables
    var movies: [Movie] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToAddMovieVC" {
            if let movieVC = segue.destination as? addMovieVC {
                movieVC.delegate = self
            }
        }
    }
    
    


} // END


extension movieTableViewVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? movieTableViewCell else { return UITableViewCell() }
        
        let newMovie = movies[indexPath.row]
        cell.movie = newMovie
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        
//        let newMovie = movies[indexPath.row]
        movies.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .left)
    }
    
} // END


extension movieTableViewVC: addMovieVCDelegate {
    func movieWasAdded(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
    
    
} // END
