//
//  MovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_204 on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
        
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        } else if segue.identifier == "DetailMovieSegue" {
                if let indexPath = tableView.indexPathForSelectedRow,
                    let detailMovieVC = segue.destination as? DetailMovieViewController {
                    detailMovieVC.movie = movies[indexPath.row]
            }
        }
    }
}

extension MovieViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        cell.delegate = self
        
        return cell
    }
}

// Delete rows stretch

extension MovieViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

extension MovieViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        if let navController = self.navigationController {
            navController.popToRootViewController(animated: true)
        }
        tableView.reloadData()
    }
}

extension MovieViewController: SeenMovieDelegate {
    func hasSeenMovie(_ movie: Movie, _ hasSeen: Bool) {
        for index in 0...(movies.count - 1) {
            if movies[index].name == movie.name {
                movies[index].hasSeen = hasSeen
            }
        }
        tableView.reloadData()
    }
}
