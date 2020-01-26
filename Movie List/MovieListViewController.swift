//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Nichole Davidson on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, MovieAddedDelegate, UITableViewDataSource, SeenButtonDelegate {
    func seenButtonTapped(cell: UITableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
         var movie = moviesOnList[indexPath.row]
        movie.seen.toggle()
        tableView.reloadData()
    }
    
   
    @IBOutlet weak var tableView: UITableView!
    
    var moviesOnList: [Movie] = []

    
    override func viewDidLoad() {
           super.viewDidLoad()
        
       }
    
    func movieWasAdded(_ movie: Movie) {
        moviesOnList.append(movie)
//            dismiss(animated: true, completion: nil)
            tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesOnList.count
    }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieOnListCell", for: indexPath) as? MovieNotSeenTableViewCell else { return UITableViewCell() }
           
           let movie = moviesOnList[indexPath.row]
           cell.movie = movie
            cell.delegate = self
           
           return cell
       }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowAddMovie" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
                addMovieVC.delegate = self
        }
    }
  }
