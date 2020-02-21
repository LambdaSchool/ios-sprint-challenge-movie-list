//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Gregory Omoma on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
            } else { return }
    
}

}

extension MovieListTableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieListTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        
        cell.movie = movie
        
        return cell
    }
    
    
}
extension MovieListTableViewController: NewMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
                
            }
}


}


