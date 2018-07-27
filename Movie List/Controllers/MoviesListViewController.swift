//
//  MoviesListViewController.swift
//  Movie List
//
//  Created by David Oliver Doswell on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Properties
    @IBOutlet weak var tableView: UITableView!
    
    let movie : Movie? = nil
    var movieController : MovieController?
    
    // Actions
    @IBAction func showButtonStatus(_ sender: Any) {
    }
    
    
    // Data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MoviesCell
        
        let movies = movieController?.movies[indexPath.row]
        
        cell.showMovieLabel.text = movie?.title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
