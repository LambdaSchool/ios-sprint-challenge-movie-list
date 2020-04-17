//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Kelson Hartle on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController, UITableViewDelegate {
    
    
    
    
    @IBOutlet weak var movieTableView: UITableView!
    
    var movieObjectRefrence: [MovieStruct] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        movieTableView.delegate = self
        movieTableView.dataSource = self
    }
    
    
    
    
    
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "AddMovieSegue" {
            
            let addMovieVC = segue.destination as? AddMovieViewController
            
            addMovieVC?.delegate = self
            
        }
        
        // Pass the selected object to the new view controller.
    }
    

}

extension MovieTableViewController: NewMovieDelegate {
    
    func movieWasCreated(_ movie: MovieStruct) {
        movieObjectRefrence.append(movie)
        movieTableView.reloadData()
    }
    
    
}

extension MovieTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieObjectRefrence.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieCellTableViewCell else { fatalError("Cell identifier can not be found.")}
        
        let movie = movieObjectRefrence[indexPath.row]
        
        cell.cellMovieLabel.text = movie.movie
        
        return cell
        
    }
    
    
    
}
