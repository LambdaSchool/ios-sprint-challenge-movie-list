//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Rick Wolter on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController,AddMovieDelegate,MovieTableViewCellDelegate {
    

    var movies = [Movie]()


    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
       }
    
    func seenTapped(on cell: MovieTableViewCell) {
        
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        
        movies[indexPath.row].hasSeen.toggle()
        tableView.reloadData()
       // var movie = movies[indexPath.row]
        
        
        
    }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        
        let movie = movies[indexPath.row]
        cell.delegate = self
        cell.movie = movie

        //seenLabel.setTitle(seenUpdate, for: .normal)
     
        return cell
    }
   
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.addMovieDelegate = self
            }
        }
        
        
    }
    

}
