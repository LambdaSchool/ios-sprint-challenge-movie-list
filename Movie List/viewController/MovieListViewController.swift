//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Iyin Raphael on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, MovieNameControllerProtocol, MovieListViewCellDelegate, UITableViewDelegate {
    
    
    var movieNameController: MovieNameController?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieNameController?.movieNames.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        let movie = movieNameController?.movieNames[indexPath.row]
        cell.movieName = movie
        cell.delegate = self
        return cell
        
    }
    
    func seenButtonWasTapped(on cell: MovieTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        guard let movie = cell.movieName else { return }
        
        movieNameController?.toggleIsSeen(name: movie)
        tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        // Do any additional setup after loading the view.
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //Delete the model object before we delete cell
            guard let movie = movieNameController?.movieNames[indexPath.row] else {return}
            movieNameController?.delete(movie: movie)
            
            //the use is swiping to delete a cell
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    

}
