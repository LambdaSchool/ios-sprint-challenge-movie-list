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
        tableView.isEditing = true
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditing))
    }
    
    @objc func stopEditing(_ sender: Any){
        tableView.isEditing = false
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(edit(_:)))
    }
    
    //reload tableview when user checks displaytalbleViewController mulitple times
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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
        //get the data model within the tableViews' indexpath at specified location
        let toMove = MovieController.shared.movies[sourceIndexPath.row]
        
        //remove data model from object's array at its' index associated with the tableViews' specified location
        MovieController.shared.movies.remove(at: sourceIndexPath.row)
        
        //insert data model object into the tableViews' index at the new specified location destination
        MovieController.shared.movies.insert(toMove, at: destinationIndexPath.row)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //create an alert textfield
        var myTextField: UITextField?
        
        //make an alert so that you can edit the text
        let alert = UIAlertController(title: "Edit", message: "Edit your movie", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.text = MovieController.shared.movies[indexPath.row].title
            myTextField = textField
        }
        
        //create update alert action
        let updateAction = UIAlertAction(title: "UPDATE TITLE", style: .default) { (_) in
            //need the movie assocaited with the cell selected
            let movie = MovieController.shared.movies[indexPath.row]
            
            //make sure there is text in the textfield
            guard let title = myTextField?.text, !title.isEmpty else { return }
            
            //call the update/edit function
            MovieController.shared.edit(movie: movie, newTitle: title)
            
            //reload tableView
            tableView.reloadData()
        }
        
        //create cancel alert action
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        
        //add actions
        alert.addAction(updateAction)
        alert.addAction(cancelAction)
        
        //present alert to view controller
        present(alert, animated: true, completion: nil)
    }
}
