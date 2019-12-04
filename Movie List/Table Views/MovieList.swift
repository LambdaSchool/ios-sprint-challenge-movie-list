//
//  MovieList.swift
//  Movie List
//
//  Created by Waseem Idelbi on 12/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieList: UITableView, UITableViewDataSource {

    

    var movies: [Movie] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
           1
       }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movieCell = dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieTableViewCell
        let movie = movies[indexPath.row]
        movieCell.movieTitleLabel.text = movie.title
        if movie.seen {
            movieCell.seenButtonTapped.titleLabel?.text = "Seen"
        } else {
            movieCell.seenButtonTapped.titleLabel?.text = "Not Seen"
        }
        return movieCell
    }
    
   
}
