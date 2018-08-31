//
//  MoviesListViewController.swift
//  Movie List
//
//  Created by Rick Wolter on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        let movie = movieController.movies[indexPath.row]
        cell.textLabel?.text = movie.title
        
        return cell
    }
    
    






    
    @IBOutlet weak var tableView: UITableView!
    
    
   
    
    let movieController = MovieController()

   
}
