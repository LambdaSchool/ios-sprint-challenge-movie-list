//
//  MovieLIstViewController.swift
//  Movie List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieLIstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddMovieCellDelegate, MovieControllerProtocol  {
    
    @IBOutlet weak var tableView: UITableView!
    var movieController: MovieController?
    let movies: [Movie] = []
    
    
    func seenButtonWasTapped(on cell: AddMovieCell) {
        print("button tapped")
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        let movie = movieController?.movies[indexPath.row]
        movieController?.toggleHasSeen(for: movie!)
        
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
        //return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddMovieCell", for: indexPath) as! AddMovieCell
        
        let movie = movieController?.movies[indexPath.row]
        cell.movie = movie 
        cell.delegate = self
        print("This is cell \(indexPath.row)")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        let movie = movieController?.movies[indexPath.row]
        movieController?.deleteMovie(movie: movie!)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
}
