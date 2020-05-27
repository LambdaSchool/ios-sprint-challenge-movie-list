//
//  ListMoviesViewController.swift
//  Movie List
//
//  Created by Mike Nichols on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol ListMoviesDelegate: class {
    func updateView()
}

class ListMoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MoviesListTableViewCell
        let movie = moviesList[indexPath.row]
        
        cell?.movieLabel.text
            = movie.title
        if movie.haveSeen == true {
            cell?.seenButton.isSelected = true
        } else {
            cell?.seenButton.isSelected = false
        }
        return cell!
    }
    
    
}


