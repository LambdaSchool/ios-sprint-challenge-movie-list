//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Patrick Millet on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController, HasSeenDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: Properties
    var hasSeenMovie = SeenController()
    
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hasSeenMovie.seen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewMovieCell", for: indexPath) as? MoviesTableViewCell else {
            fatalError("Fatal Error: Problem casting cell as custom cell type")
        }
        
        let singleMovie = hasSeenMovie.seen[indexPath.row]
        
        cell.textLabel?.text = singleMovie.name
        cell.seen = singleMovie
        cell.delegate = self
        
        return cell
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    // MARK: - Delegate Method

    func toggleseen(on cell: MoviesTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let seenSwitch = hasSeenMovie.seen[indexPath.row]
        
        hasSeenMovie
    }
    
    
}


