//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Stuart on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieCellDelegate {

    // Large Titles
    override func viewDidLoad() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // Lifecycle Methods
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
    
    // UITableViewDataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieController.shared.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        guard let movieCell = cell as? MovieCell else { return cell }
        
//        let movieTitle = MovieController.shared.movieToShow(at: indexPath.row)
//
//        movieCell.textLabel?.text = movieTitle
        
        let movie = MovieController.shared.movies[indexPath.row]
        movieCell.movie = movie
        movieCell.delegate = self
        
        return movieCell
    }
    
    // Swipe-to-delete
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        
        MovieController.shared.deleteMovie(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    // Editing & row-reording
    @IBAction func editTable(_ sender: Any) {
        tableView.setEditing(true, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingTable(_:)))
    }
    
    @objc
    func stopEditingTable(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editTable(_:)))
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        MovieController.shared.moveRow(at: sourceIndexPath.row, to: destinationIndexPath.row)
    }
    
    // IBOutlets & Properties
    @IBOutlet weak var tableView: UITableView!
}
