//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Elizabeth Thomas on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

    }

    // MARK: - Table view data source
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            let addMovieVC = segue.destination as! AddMovieViewController
            
                addMovieVC.delegate = self
        }
    }
}


extension MoviesTableViewController: AddMovieDelegate {
        func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
            if let navController = self.navigationController {
                navController.popToRootViewController(animated: true)
            }
        tableView.reloadData()
    }
}

extension MoviesTableViewController: UITableViewDelegate {
    
}

extension MoviesTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell()}

        let movie = movies[indexPath.row]
        cell.movie = movie
        return cell
    }

}
