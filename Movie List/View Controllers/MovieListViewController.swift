//
//  MovieViewController.swift
//  Movie List
//
//  Created by Paul Yi on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MovieControllerProtocol, MovieTableViewCellDelegate {
    var movieController: MovieController?
    let reuseIdentifier = "MovieCell"
    
    @IBOutlet var movieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.dataSource = self
        movieTableView.delegate = self
        movieTableView.reloadData()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        movieTableView.reloadData()
    }
    
    func updateCell(on cell: MovieTableViewCell) {
        guard let indexPath = movieTableView.indexPath(for: cell),
            let movie = movieController?.movies[indexPath.row] else { return }
        
        movieController?.updateMovie(movie: movie)
        movieTableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        guard let movieCell = cell as? MovieTableViewCell else { return cell }
        
        let movie = movieController?.movies[indexPath.row]
        movieCell.movie = movie
        movieCell.delegate = self
        
        return movieCell
    }
    
    @IBAction func editTable(_ sender: Any) {
        movieTableView.setEditing(true, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingTable(_sender:)))
    }

    @objc func stopEditingTable( _sender: Any) {
        movieTableView.setEditing(false, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editTable(_:)))
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let fromIndex = sourceIndexPath.row
        let toIndex = destinationIndexPath.row
        movieController?.moveMovie(from: fromIndex, to: toIndex)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let movie = movieController?.movies[indexPath.row] else { return }
            movieController?.deleteMovie(movie: movie)
            movieTableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    
}
