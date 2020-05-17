//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Jason Hoover on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {
    
    var theMovies = [Movies(title: "The Green Mile", watched: true),Movies(title: "Fast and the Furious", watched: false)]
    
    var seen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    @IBAction func seenButton(_ sender: UIButton) {
        if sender.currentTitle == "Seen" {
            sender.setTitle("Not Seen", for: .normal)
            seen = false
            print(theMovies)
        }else if sender.currentTitle == "Not Seen" {
            sender.setTitle("Seen", for: .normal)
            seen = true
            print(theMovies)
            
        }else {
            print("ERROR")
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return theMovies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieTitles", for: indexPath) as? MoviesTableViewCell else {
            fatalError("Cell identifier is wrong or the cell is not of type of expected type MoviesTableViewCell")
            
        }
        let newMovies = theMovies[indexPath.row]
        cell.movieTitle.text = newMovies.title
        
        switch newMovies.watched{
        case true:
            cell.hasItBeenSeen.setTitle("Seen", for: .normal)
        case false:
            cell.hasItBeenSeen.setTitle("Not Seen", for: .normal)
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            theMovies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showNewMovieScreen" {
            let newMovieVC = segue.destination as? AddMovieViewController
            newMovieVC?.delegate=self
        }
    }
}
extension MovieListTableViewController: AddMovieDelegate {
    func movieCreated(newMovie: Movies) {
        theMovies.append(newMovie)
        tableView.reloadData()
    }
}
