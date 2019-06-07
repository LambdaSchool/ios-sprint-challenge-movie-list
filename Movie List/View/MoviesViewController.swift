//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Kat Milton on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController, UITableViewDataSource, MovieTableViewCellDelegate {
    
    
    // MARK: - Outlets and Properties
    @IBOutlet var movieTable: UITableView!
    var movieController = MovieController()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.movieTable.dataSource = self
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        
        guard let movieCell = cell as? MovieTableViewCell else { return cell}
        let movie = movieController.movies[indexPath.row]
        movieCell.movie = movie
        
        return cell
    }
 
    func seenButtonTapped(on cell: MovieTableViewCell) {
        guard let movieSeen = cell.movie?.seen else { return }
        
        guard let index = movieTable.indexPath(for: cell.self) else { return }
        
        if movieSeen == true {
            cell.movie?.seen.toggle()
        } else if movieSeen == false {
            cell.movie?.seen.toggle()
        } else {
            return
        }
        self.movieTable.reloadRows(at: [index], with: UITableView.RowAnimation.left)
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
