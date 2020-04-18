//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Clayton Watkins on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    var myMovies: [Movie] = []
    
    @IBOutlet weak var MovieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieDetailSegue"{
            if let addVC = segue.destination as? AddMovieViewController{
                addVC.delegate = self
            }
        }
    }
}

extension MovieTableViewController: UITableViewDataSource{
    //The number of cells generated will be equal to the number of Movies in our myMovies array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myMovies.count
    }
    
    //Reuses old cells as the user continues scrolling through the tableview
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieCellTableViewCell
        else { return UITableViewCell() }
        
        let newMovie = myMovies[indexPath.row]
        cell.movie = newMovie
        return cell
    }
}

//Takes information from the delegator and appends it to our myMovies array
extension MovieTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        myMovies.append(movie)
        MovieTableView.reloadData()
    }
}
