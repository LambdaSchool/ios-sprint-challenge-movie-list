//
//  MovieListTableViewController.swift
//  movieListREDO
//
//  Created by B$hady on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController {
    
    var myMovies:[Movie] = [Movie(title: "Almost Famous", seen: true)]
    
    @IBOutlet weak var movieTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.delegate = self
        movieTableView.dataSource = self
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "addMovieSegue" {
                if let addMovieVC = segue.destination as? AddMovieViewController {
                    addMovieVC.delegate = self
                }
            }
        }

    }
    
extension MovieListTableViewController: UITableViewDelegate {
}
    
    // MARK: - Navigation


extension MovieListTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = movieTableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? movieTableViewCell else { return UITableViewCell() }
        cell.movie = myMovies[indexPath.row]
        return cell
        }
    }

extension MovieListTableViewController: AddMovieDelegate {
    func addedMovie(_ movie: Movie) {
        myMovies.append(movie)
        dismiss(animated: true, completion: nil)
        movieTableView.reloadData()
    }
}

