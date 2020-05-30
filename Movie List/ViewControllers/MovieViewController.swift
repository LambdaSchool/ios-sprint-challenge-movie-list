//
//  MovieViewController.swift
//  Movie List
//
//  Created by John McCants on 5/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    
    var movieList : [Movie] = [Movie(moviesName: "Balto", seen: true)]
    
    var delegate : AddMovieDelegate?

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovie" {
            if let destinationVC = segue.destination as? AddMovieViewController {
                destinationVC.delegate = self
            }
        }
    }
    

}

extension MovieViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
            return UITableViewCell()
        }
        self.tableView = tableView
        let movie = movieList[indexPath.row]
        cell.movie = movie
        
        
        
        
        return cell
       }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movieList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
}

extension MovieViewController: AddMovieDelegate {
    func addMovie(_ movie: Movie) {
        _ = navigationController?.popViewController(animated: true)
        movieList.append(movie)
        tableView.reloadData()
    }

}

protocol AddMovieDelegate {
    func addMovie(_ movie: Movie)
}
