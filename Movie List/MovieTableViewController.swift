//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Enzo Jimenez-Soto on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    var moviesArray: [Movie] = [Movie(name: "Dune", seen: true),
                                Movie(name: "The Princess Bride", seen: true),
                                Movie(name: "The Graduate", seen: false)]
    
    // segue called addMovieSegue


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "addMovieSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else {return}
            addMovieVC.delegate = self
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}

extension MovieTableViewController: UITableViewDataSource,  UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    // what to put in each CUSTOM cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as? MovieTableViewCell else {fatalError("oops")}
        
        let movie = moviesArray[indexPath.row]
        cell.movie = movie
        return cell
    }
    
    
    
}

extension MovieTableViewController: AddMovieDelegate {
    func movieWasAdded(movie: Movie) {
            moviesArray.append(movie)
            tableView.reloadData()
        }
}
