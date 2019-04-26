//
//  MoviesTableViewController.swift
//  Sprint1
//
//  Created by Victor  on 4/26/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit

class MovieTableViewController: UITableViewController, MoviePresenter {
    //passing controller
    var movieController: MovieController?

    override func viewDidLoad() {
        super.viewDidLoad()
        //updating nav bar
        self.navigationController?.navigationBar.topItem?.title = "Movies"
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.reloadData()
    }
    
    //reloading data
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //using movie count in array
        return movieController?.movies.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //getting the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        guard let movieCell = cell as? MovieTableViewCell else {return cell}
        
        //passing the movie into each cell
        let movie = movieController?.movies[indexPath.row]
        
        movieCell.movie = movie
        
        return cell
    }
}
