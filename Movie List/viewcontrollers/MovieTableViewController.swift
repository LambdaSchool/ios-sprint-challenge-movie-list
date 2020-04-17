//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Vincent Hoang on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController, UITableViewDataSource, AddMovieDelegate {
    
    var movieArray: [Movie] = [Movie]()
    var movieDelegate: AddMovieDelegate?
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieDelegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "movieViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MovieViewCell else {
            fatalError("The dequeued cell is not an instance of MovieViewCell")
        }
        
        cell.movie = movieArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movieArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func movieWasAdded(_ movie: Movie) {
        movieArray.append(movie)
        tableView!.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "addMovieSegue":
            guard let addMovieViewController = segue.destination as? AddMovieViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            addMovieViewController.delegate = self
        default:
            fatalError("Unexpected segue identifier: \(segue.identifier ?? "No segue available")")
        }
    }
}
