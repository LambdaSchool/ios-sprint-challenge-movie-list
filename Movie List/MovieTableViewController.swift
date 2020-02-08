//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Robert on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController, UITextFieldDelegate {
    @IBOutlet weak var MovieTitle: UILabel!
    @IBOutlet weak var AddMovieButton: UIBarButtonItem!
    @IBOutlet weak var movieTableView: UITableView!
    
    var movies = [Movie]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
}
    extension MovieTableViewController: UITableViewDataSource, {
        func movietableView(_ movieTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return movies.count
        }
        override func tableView(_ movieTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = movieTableView.dequeueReusableCell(withIdentifier: "movieTableViewCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell() }
            let movie = movies[indexPath.row]
            cell.movie = movie
            return cell
        }
    }
    extension MovieTableViewController: AddMovieDelegate {
        func movieWasAdded(_ movie: Movie) {
            movies.append(movie)
            dismiss(animated: true, completion: nil)
            movieTableView.reloadData()
        }
    }

    // MARK: - Table view data source

 

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


