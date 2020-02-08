//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Nicolas Rios on 7/31/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {

    var movies: [Movie] = []
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowNewMovie"{
            guard let detailVC = segue.destination as? AddMovieViewController else {return}
            detailVC.delegate = self
        }
    }


}

extension MoviesTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        return cell
        
    }
    
    
}
extension MoviesTableViewController: AddMovieViewControllerDelegate{
    func addedMovie(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
    
    
}
