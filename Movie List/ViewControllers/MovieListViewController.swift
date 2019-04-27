//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Ryan Murphy on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
    
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
    
    }
    
    let movieController = MovieController()
    
    @IBOutlet var movieTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        guard let movieCell = cell as? MovieTableViewCell else { return cell }
        
        // Get the note for row
        
        let movie = movies[indexPath.row]
        movieCell.movie = movie
        
       
        
        
        return cell
       
     
    }
 

    
    
}
