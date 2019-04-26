//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Michael Flowers on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    
    var movieController: MovieController?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

}

extension MovieListViewController: UITableViewDelegate, UITableViewDataSource {
    // MARK: - Table view data source
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieController?.movies.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //down cast as tableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableViewCell
        
        //grab the movie object at the cell/row and pass it into the tableViewCell's file
        let movieToPass = movieController?.movies[indexPath.row]
        cell.movie = movieToPass
        
        //come back here to set the DELEGATE -- asign this class to be the delegate of the delegate protocol
        cell.delegate = self
        return cell
    }
    
    // Override to support editing the table view.
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //first delete the model, then delete the view
            guard let movieToDelete = movieController?.movies[indexPath.row] else { return }
            movieController?.delete(movie: movieToDelete)
            
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

extension MovieListViewController: MovieTableViewCellDelegate {
    
    func tappedSeenButton(on cell: MovieTableViewCell) {
        //get the model, change it's property
        guard let indexPath = tableView.indexPath(for: cell), let movieToToggle = movieController?.movies[indexPath.row] else { return }
        
        //now that we have the cell and the model withn the cell we can toggle the movie's property
        movieController?.toggle(movie: movieToToggle)
        
        //now that we have toggled, we need to reset the table view
        tableView.reloadData()
        
        
    }
}
