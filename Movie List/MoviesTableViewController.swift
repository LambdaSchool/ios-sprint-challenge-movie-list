//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by William Castillo on 9/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {

   
    let movies = [""]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
}

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath)
    
        cell.textLabel?.text = movies[indexPath.row]
    
    return cell
    
    }



}

