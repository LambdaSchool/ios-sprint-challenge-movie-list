//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Rick Wolter on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieControllerProtocol,  MovieTableViewCellDelegate {
    
    var movieController: MovieController?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movieList.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell()}
        
        guard let movie = movieController?.movieList[indexPath.row] else { return cell}
        
        cell.delegate = self
        cell.movie = movie
       

        return cell
    }
    
    
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        tableView.reloadData()
//        if editingStyle == .delete {
//            movieController?.deleteMovie(at: indexPath.row)
//        }
//    }
    
    func toggleWatched(on cell: MovieTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell),
            let movie = movieController?.movieList[indexPath.row] else { return }
        
        movieController?.changeHasWatched(of: movie)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    
}
