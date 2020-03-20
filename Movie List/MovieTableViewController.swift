//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Cody Morley on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AddNewMovieSegue" {
            guard let newMovieVC = segue.destination as? AddNewMovieViewController else {
                return
            }
            newMovieVC.delegate = self
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}

extension MovieTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieViewCell else {
            fatalError("Cell is not a MovieViewCell.")
        }
        let movie = movies[indexPath.row]
        cell.movie = movie
        cell.movieLabel.text = movie.title
        if movie.haveSeen == true {
            cell.seenButton.setTitle("Seen", for: .normal)
        } else {
            cell.seenButton.setTitle("Unseen", for: .normal)
        }
        
        return cell
    }
}

extension MovieTableViewController: NewMovieDelegate {
    func movieWasAdded(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
    
    
    
    
}
