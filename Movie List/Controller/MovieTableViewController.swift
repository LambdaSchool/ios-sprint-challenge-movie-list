//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Aaron Cleveland on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "addMovieSegue" {
            guard let addMovieVC = segue.destination as?
                AddMovieViewController else { return }
            addMovieVC.delegate = self
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
}

extension MovieTableViewController: UITableViewDelegate, UITableViewDataSource, AddMovieDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { fatalError("Unable to see MovieTableViewCell")}
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        return cell
    }
    func movieWasAdded(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
    
    
}
