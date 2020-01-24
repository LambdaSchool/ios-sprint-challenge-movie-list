//
//  MovieViewController.swift
//  Movie List
//
//  Created by Keri Levesque on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

// this connects the table view to code
 @IBOutlet weak var moviesTableView: UITableView!
    // need an empty array to store the movies, also type of the Movie struct
    var movies: [Movie] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovieSegue" {
            if let addMovieVC = segue.destination as? AddMoviesViewController {
                addMovieVC.addMovie = self 
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
 
extension MovieViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
}

extension MovieViewController: AddMoviesDelegate {
    func movieWasCreated(_ movie: Movie) {
        movies.append(movie)
     
        moviesTableView.reloadData()
    }
}
