//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Enzo Jimenez-Soto on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    var moviesArray: [Movie] = [Movie(name: "Dune", seen: true),
                                Movie(name: "The Graduate", seen: true),
                                Movie(name: "The Pricess Bride", seen: false)]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "addMovieSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else {return}
            addMovieVC.delegate = self
        }
        

    }
    

}

extension MoviesTableViewController: UITableViewDataSource,  UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as? MovieTableViewCell else {fatalError("oops")}
        
        let movie = moviesArray[indexPath.row]
        cell.movie = movie
        return cell
    }
    
    
    
}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasAdded(movie: Movie) {
            moviesArray.append(movie)
            tableView.reloadData()
        }
}
