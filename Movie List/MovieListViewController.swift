//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Lydia Zhang on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddMovieDelegate {
    func movieAdd(movie: Movie) {
        movies.append(movie)
        preservedMovie.append(movie)
        movieTableView.reloadData()
    }
    

    var movies: [Movie] = []

    @IBOutlet weak var movieTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        movieTableView.dataSource = self
        movieTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListCell", for: indexPath) as? MovieListTableViewCell else {
            return UITableViewCell()
        }
        let movie = movies[indexPath.row]
        cell.movie = movie
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .bottom)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            //guard let indexPath
            guard let movieVC = segue.destination as? AddMovieViewController else {
                return
            }
//            guard let indexPath = movieTableView.indexPathForSelectedRow else {
//                return
//            }
            movieVC.delegate = self
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
