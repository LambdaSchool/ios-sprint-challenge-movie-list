//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Corey Sessions on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {

    @IBOutlet weak var movieTableView: UITableView!
    
    let movieDataController = MovieDataController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.delegate     = self
        movieTableView.dataSource   = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        movieTableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToAddMovieVC" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
            addMovieVC.movieDataController = self.movieDataController
        }
    }

}

extension MovieListViewController: UITableViewDelegate {
    
}

extension MovieListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieDataController.moviesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        let movie = movieDataController.moviesList[indexPath.row]
        cell.movieLbl.text = movie.movieName
        
        let seenLblText = movie.seenMovie ? "Seen" : "Unseen"
        cell.seenBtn.setTitle(seenLblText, for: .normal)
        cell.movieDataDelegate = self
        return cell
    }
    
}

extension MovieListViewController: MovieDataControllerDelegate {
    func tappedSeenMovieButton(on cell: MovieTableViewCell) {
        guard let indexPath = movieTableView.indexPath(for: cell) else { return }
        movieDataController.toggleSeenMovie(indexPath: indexPath)
        movieTableView.reloadRows(at: [indexPath], with: .none)
    }
    
    
}
