//
//  ViewController.swift
//  Movie List
//
//  Created by Ian French on 4/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit






class MovieListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
          
      
    var movies: [Movie] = [Movie(movieName: <#T##String#>)]
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

          if segue.identifier == "AddMovieSegue" {
              if let addVC = segue.destination as? AddMovieViewController {
                addVC.delegate = self as? AddMovieDelegate
              }
}
}

}
extension MovieListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        return cell
    }
}

// delegate
// step 4 adopt and conform to the delegate, lines 51 - 54
// step 5 set self as delegate when delegator is created, line 23

extension MovieListViewController: AddMovieDelegate {
    func newMovieAdded(movie: Movie) {
        friends.append(friend)
        tableView.reloadData()
   
    
    }
    
}
    
    
    
    
    
    
    
    
    
    
    
    
    
  

