//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Vijay Das on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    let reuseIdentifier = "movieCell"

    override func viewDidLoad() {
        super.viewDidLoad()

   }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MovieModelController.shared.movieCount()
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        let movie = MovieModelController.shared.movieAtIndex(indexPath.row)
        
        cell.textLabel?.text = movie.movie

        // Configure the cell...

        return cell
    }
    
    
    // MAGIC DELETE
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        
        MovieModelController.shared.removeMovie(at: indexPath.row)
        
        tableView.deleteRows(at: [indexPath], with: .automatic)
        
    }
    
    
    // EDIT BUTTON
    
    
    @IBAction func editTable(_ sender: Any) {
        tableView.setEditing(true, animated: true)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingTable(_:)))
        navigationItem.rightBarButtonItem = doneButton
        
    }
    
    @objc func stopEditingTable(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        let editButton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editTable(_:)))
        navigationItem.rightBarButtonItem = editButton
    }
    
    
}
