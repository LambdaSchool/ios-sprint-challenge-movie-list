//
//  MyMoviesViewController.swift
//  Movie List
//
//  Created by Marissa Gonzales on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddedAMovie {
    func addedAMovie(movie: Movie)
}


class MyMoviesViewController: UIViewController {
    
    // Dummy Data
    var myMovies: [Movie] = [Movie(name: "Joe Dirt", seen: true)]
    
    // delegate
    var delegate: AddedAMovie?
   
    
    
    // Outlets
    @IBOutlet weak var myMoviesTableView: UITableView!
    
    
    // Seen / Not Seen button action
    
    @IBAction func SeenNotSeenButton(_ title: String, for state: UIControl.State) {
    
        
        SeenNotSeenButton("Seen", for: .normal) 
        

    

    }
    
       

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Segue
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AddMovieSegue" {
            
            guard let newMovieVC = segue.destination as? NewMovieViewController else {
                return
            }
            
            newMovieVC.delegate = self
        }
    }
}

 // Table View Extension
extension MyMoviesViewController: UITableViewDataSource {
    
     // Set number of Rows in Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myMovies.count    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyMovieCell", for: indexPath)
            as? MyMoviesTableViewCell else {
                fatalError("Cell is not a MyMovieCell")
        }
        
        let movie = myMovies[indexPath.row]
        
        cell.movieNameLabel.text = movie.name
        
        return cell
    }
}

    // New Movie Delegate

extension MyMoviesViewController: NewMovieDelegate {
    func movieWasAdded(movie: Movie) {
        myMovies.append(movie)
        myMoviesTableView.reloadData()
    }
}


