//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Jordy on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, MovieControllerProtocol {
    
    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieController?.movies.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        
        let movie = movieController?.movies[indexPath.row]
        
        cell.textLabel?.text = movie?.name
        
        // Configure the cell...
        
        return cell
    }
    
    @IBOutlet weak var movieTableView: UITableView!
    
}
