//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Brian Cobb on 4/27/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
//This controls everything just after view appears on screen.
    override func viewDidLoad() {
        super.viewDidLoad()
tableView.reloadData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    
    var newMovies: [String] = []
    
    
    
//This controls how many elements it should display
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return newMovies.count
    }
//This controls actual items to be displayed in each cell.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        cell.textLabel?.text = newMovies[indexPath.row]
    return cell
    }

 //this is everything that happens before a segue takes you to the next screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovieSegue" {
            let detailVC = segue.destination as! MovieDetailViewController
            detailVC.tableViewController = self
        }
    }
    
    
    
    
    
}
