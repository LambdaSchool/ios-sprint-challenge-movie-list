//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by denis cedeno on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {

   
        var movies: [Movie] = []
    
        @IBOutlet weak var tableView: UITableView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovieTitleSegue" {
            guard let addMovieVC = segue.destination as? addMovieTitleViewController else {
                fatalError() }
            
            addMovieVC.delegate = self
        }
    }
            
        
        }
 
extension MovieTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let mCell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? movieTableViewCell else {
                return UITableViewCell()}

            mCell.movie = movies[indexPath.row]
            mCell.delegate = self
            return mCell
        }
}


extension MovieTableViewController: addMovieTitleDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
    
    
}

extension MovieTableViewController: MovieTableViewCellDelegate {
    func seenButtonWasTapped(cell: movieTableViewCell) {
        cell.seenButton.setTitle("not seen", for: [])
    }
    
}

