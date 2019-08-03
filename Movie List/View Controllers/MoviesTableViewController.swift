//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_141 on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var movie:[Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieTitleModalSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }

}

extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Movie Cell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let currentMovie = movie[indexPath.row]
        cell.movie = currentMovie
        return cell
    }
}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movieInstance: Movie) {
        movie.append(movieInstance)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}
