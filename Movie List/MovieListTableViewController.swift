//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Craig Swanson on 9/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController {

    var movies: [Movie] = [Movie(name: "Sixteen Candles", seen: true)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension MovieListTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieListTableViewCell else { fatalError() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        return cell
    }
}
