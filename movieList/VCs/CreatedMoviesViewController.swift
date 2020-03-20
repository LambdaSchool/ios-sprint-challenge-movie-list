//
//  CreatedMoviesViewController.swift
//  movieList
//
//  Created by Marissa Gonzales on 3/20/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class CreatedMoviesViewController: UIViewController {
    
    
    
    // Dummy Data
    var myMovies: [Movie] = [Movie(name: "JoeDirt", seenOrNot: true)]
    let deleteAction = UIContextualAction(style: .normal, title:  "Delete", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
        success(true)
        
    })
    
    
   
    
    @IBOutlet weak var seenNotSeenButton: UIButton!
    
    
    @IBOutlet weak var myMoviesTableView: UITableView!
    
    
    
    override func viewDidLoad() {
       myMoviesTableView.dataSource = self
        
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "addMovieSegue" {
            
            guard let newMovieVC = segue.destination as? NewFriendViewController else {
                return
            }
            newMovieVC.delegate = self
        
        }
    }
}

extension CreatedMoviesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyMovieCell", for: indexPath) as? MovieTableViewCell else {
            fatalError("Not a MOvieTableViewCell")
        }
        
        let movie = myMovies[indexPath.row]
        
        cell.movieTableViewCell.text = movie.name
//        myMoviesTableView.deleteRows(at: [indexPath], with: .fade)
        
        return cell
    }
}

extension CreatedMoviesViewController: NewMovieDelegate {
    func addedAMovie(movie: Movie) {
        myMovies.append(movie)
        myMoviesTableView.reloadData()
    }
    
    //
}
