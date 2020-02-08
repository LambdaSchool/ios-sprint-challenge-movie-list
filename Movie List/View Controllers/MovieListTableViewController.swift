//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Jarren Campos on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {
    
    
    @IBAction func refreshButton(_ sender: Any) {
        loadView()
    }
    
    @IBAction func ifSeenButton(_ sender: Any) {
        guard let button = sender as? UIButton else{ return }
        button.titleLabel?.text = "Hello"
        button.isSelected.toggle()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }
    
    func loadData() {
        // code to load data from network, and refresh the interface
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movies.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        let movie = movies[indexPath.row]
        
        cell.textLabel!.text = movie.title
        
        
        //        cell.backgroundColor = UIColor.red
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 1. Make sure you are using the correct segue
        
        if segue.identifier == "ToMovieDetail" {
            // 2. Get the instance of the detail view from the destination
            // 3. Get the index path for the row the user tapped
            if let detailVC = segue.destination as? DetailMovieViewController, let indexPath = tableView.indexPathForSelectedRow {               // 4. Initialize Color with index path
                let movie = movies[indexPath.row]
                //              let color = colors[indexPath.row]
                
                
                //
                detailVC.movieTitle = movie
                
            }
        }
        
    }
}
