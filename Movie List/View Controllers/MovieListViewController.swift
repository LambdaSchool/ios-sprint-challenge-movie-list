//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Andrew Dhan on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit



class MovieListViewController: UIViewController, UITableViewDataSource,MovieControllerProtocol {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movieList.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell() }
        guard let movie = movieController?.movieList[indexPath.row] else {return UITableViewCell()}
        cell.titleLabel.text = movie.title
        cell.hasSeenButtonLabel.setTitle(movieController?.reportSeen(movie: movie), for: .normal)
        
        return cell
    }
    
    
    //Mark: - Properties
    
    var movieController: MovieController?
  
    @IBOutlet weak var tableView: UITableView!
}
