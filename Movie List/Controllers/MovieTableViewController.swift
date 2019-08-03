//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Aaron on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromAddVC" {
            if let vc = segue.destination as? MovieAddViewController {
                vc.delegate = self
            }
        }
    }


}

extension MovieTableViewController: UITableViewDataSource {

    
    
    // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell()}

        let movie = movies[indexPath.row]
        cell.movie = movie
        


     return cell
     }
 
}

extension MovieTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        navigationController?.popViewController(animated: true)
        tableView.reloadData()
    }
    
    
}
