//
//  MovieController.swift
//  Movie List
//
//  Created by Nikita Thomas on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit


class MovieModel: NSObject, UITableViewDataSource, MovieTableViewCellDelegate {

    @IBOutlet weak var tableView: UITableView!
    var movies = [Movie]()
    
    func createMovie(name: String) {
        let movie = Movie(name: name)
        movies.append(movie)
    }
    
    
    func tappedSeenButton(on cell: MovieTableViewCell) {
        guard let indexPath = cell.indexPath else {return}
        movies[indexPath.row].seen.toggle()
        
        switch movies[indexPath.row].seen {
        case true:
            cell.seenButton.setTitle("Seen", for: .normal)
        case false:
            cell.seenButton.setTitle("Not Seen", for: .normal)
        }
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableViewCell

        let movie = movies[indexPath.row]
        if movie.seen {
            cell.seenButton.setTitle("Seen", for: .normal)
        } else {
            cell.seenButton.setTitle("Not Seen", for: .normal)
        }
        
        cell.textLabel?.text = movie.name
        cell.indexPath = indexPath
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
}
