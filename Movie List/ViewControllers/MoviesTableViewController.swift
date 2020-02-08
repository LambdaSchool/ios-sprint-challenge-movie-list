//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_259 on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController, UITableViewDelegate {
    
    // MARK: IBOutlets
    @IBOutlet weak var movieTableView: UITableView!
    
    // MARK: Properties
    var movies: [Movie] = [/*Movie(movieName: "Star Wars")*/]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.movieTableView.delegate = self
        self.movieTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        cell.movie = movies[indexPath.row]
        return cell
    }
}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true)
        movieTableView.reloadData()
    }
}
