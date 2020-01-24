//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Nichole Davidson on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, MovieAddedDelegate {

    var moviesOnList: [Movie] = []
    
    
       override func viewDidLoad() {
           super.viewDidLoad()
       }
    
    func movieWasAdded(movie: Movie) {
        moviesOnList.append(movie)
        
//        tableView.reloadData()
    }
    
   
////    override
//     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return moviesOnList.count
//    }
//
////     override
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieNotSeenTableViewCell else { return UITableViewCell() }
//
//        let movie = moviesOnList[indexPath.row]
//
//        cell.movieOnList.text = movie.name
//
//        return cell
//    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowAddMovie" {
            
            guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
            
            addMovieVC.delegate.self
        }
    }


}
