//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Violet Lavender Love on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    @IBOutlet weak var movieTableView: UITableView!
    
    var movies: [Movie] = [Movie(Title: "Title")]
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.dataSource = self
    }
    
      
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ModalAddMovie" {
        guard let addMovieVC = segue.destination as? AddMovieViewController else {
            return
    }
            addMovieVC.delegate = self
}
        
}
}

extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return movies.count
        
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell            else{
        fatalError("Cell is not a MovieTableViewCell. Uh-Oh!")
       }
        let movie = movies[indexPath.row]
        cell.movieTitleLabel.text = movie.Title

        return cell
        
}
 }
extension MovieListViewController: AddMovieDelegate {
    func movieWasAdded(movie: Movie) {
       movies.append(movie)
        movieTableView.reloadData()
   }
}
