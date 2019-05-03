//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Brian Cobb on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

import UIKit

class MovieTableViewController: UITableViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newMovies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        cell.textLabel?.text = newMovies[indexPath.row]
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ClassicSegue" {
            let detailVC = segue.destination as! MovieDetailViewController
            detailVC.tableViewController = self
        }
    }
    
    
var newMovies: [String] = []
    
    
}
