//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Nonye on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


class MovieListTableViewController: UIViewController {
    

    var movies: [Movies] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    //MARK: - botton or top
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "MovieListSegue" {
                guard let addMovieVC = segue.destination as? NewMovieViewController else { return }
                addMovieVC.delegate = self
            }
        }
        

    }
    // MARK: - Table view data source

    
        
    extension MovieListTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        let movieCell = movies[indexPath.row]
        cell.movieList = movieCell
        return cell
    }
    
    
        }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

 
extension MovieListTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movies) {
        movies.append(movie)
      
    }
}


