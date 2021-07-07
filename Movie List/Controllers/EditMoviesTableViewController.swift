//
//  EditMoviesTableViewController.swift
//  Movie List
//
//  Created by Sameera Roussi on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class EditMoviesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set the tableView source and delegate
        tableView.dataSource = self
        
        //Set the background image
        let blueSmoothBG = UIImage(named: "bluesmooth.png")
        let blueSmootBackground = UIImageView(image: blueSmoothBG)
        self.tableView.backgroundView = blueSmootBackground
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Refresh the movie list in the tableView
        self.tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MovieData.shared.titleCount()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTitle", for: indexPath)
        
        //Make the cell background clear so background image will show
        cell.backgroundColor = .clear
        
        //Get the movie title
        let title = MovieData.shared.itemTitle(at: indexPath.row)
        
        //Display the movie title to the cell
        cell.textLabel?.text = title

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //Delete the title from the model
            MovieData.shared.removeMovie(at: indexPath.row)
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }    
    }
    
    @IBAction func editMovieList(_ sender: Any) {
        tableView.setEditing(true, animated: true)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingList(_:)))
        navigationItem.rightBarButtonItem = doneButton
    }
    
    @objc
    func stopEditingList(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        let editButton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editMovieList(_:)))
        navigationItem.rightBarButtonItem = editButton
    }
    
    @IBAction func seeButtonTapped(_ sender: UIButton) {
        sender.setTitle("Seen", for: .normal)
        sender.setTitleColor(.gray, for: .normal)
    }
    
    //Move row  functionality
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        MovieData.shared.moveMovie(from: sourceIndexPath.row, to: destinationIndexPath.row)
        tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
    }
    

}
