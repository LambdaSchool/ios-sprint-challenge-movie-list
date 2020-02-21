//
//  MoviesListViewController.swift
//  Movie List
//
//  Created by Wyatt Harrell on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var movies: [Movie] = [Movie(name: "No Time To Die", hasSeen: false)]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "ShowAddMovie" {
            guard let AddMovieVC = segue.destination as? AddMovieViewController else {
                return
            }
            AddMovieVC.delegate = self
        }
    }
    

}

extension MoviesListViewController: AddMovieDelegate {
    func addMovie(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}
