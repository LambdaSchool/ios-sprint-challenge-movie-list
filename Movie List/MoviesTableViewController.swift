//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Christy Hicks on 9/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
struct Movie {
    var title: String
    var isSeen: Bool = false
}

class MoviesTableViewController: UITableViewController {
    
    var movieList: [Movie?] = [Movie(title: "The Nightmare Before Christmas", isSeen: true)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
         return 1
     }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
               
        cell.movie = movieList[indexPath.row]
               return cell
    }
         // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
            case "AddMovieSegue":
                guard let addMovieVC = segue.destination as? AddMovieViewController else { fatalError() }
               
                addMovieVC.movieDelegate = self as! AddMovieDelegate
                
            default:
                fatalError("An unknown segue was encountered: \(segue.identifier ?? "<No ID>")")
        }
    }

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movieList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        
        }    
    }
        
}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movieList.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
        
    }
    
    
}
