//
//  MoviesListViewController.swift
//  Movie List
//
//  Created by David Oliver Doswell on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieProtocol {
    
    // Properties
    @IBOutlet weak var tableView: UITableView!
    
    var movieController : MovieController?
    
    // Runtime
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    // Data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MoviesCell
        
        let movie = movieController?.movies[indexPath.row]
        cell.showMovieLabel.text = movie?.title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        guard let movie = movieController?.movies[indexPath.row] else { return }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
