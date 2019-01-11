//
//  DisplayMovieTableViewController.swift
//  Movie List
//
//  Created by Michael Flowers on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DisplayMovieTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //ceate edit button in navigation controller
    @IBAction func edit(_ sender: Any){
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(stopEditing))
    }
    
    @objc func stopEditing(_ sender: Any){
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(edit(_:)))
    }
    
    //reload tableview when user checks displaytalbleViewController mulitple times
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MovieController.shared.movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "selectedMovieCell", for: indexPath)
        
        //retrieve data model
        let movie = MovieController.shared.movies[indexPath.row]
        
        //display model in table view cells
        cell.textLabel?.text = movie.title

        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //find model to delete
            let movieToDelete = MovieController.shared.movies[indexPath.row]
            
            // Delete the row from the data source
            MovieController.shared.delete(movie: movieToDelete)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
 
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        //get the data model
        let toMove = MovieController.shared.movies[sourceIndexPath.row]
        //remove data model from view
        MovieController.shared.movies.remove(at: sourceIndexPath.row)
        //insert data model at new destination on view
        MovieController.shared.movies.insert(toMove, at: destinationIndexPath.row)
    }
}
