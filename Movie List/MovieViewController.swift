//
//  MovieViewController.swift
//  Movie List
//
//  Created by patelpra on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieTableViewCellDelegate {

        let movieController = MovieController()
      

    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            self.movieTableView.delegate = self
            self.movieTableView.dataSource = self
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            self.movieTableView.reloadData()
            
        }
        
        //-- This is conform to UITableViewDataSource --//
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.movieController.movies.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
            
            // setting current movie for the cell row
            let movie = self.movieController.movies[indexPath.row]
            // set cell's label text to the movie's name
            //cell.nameLabel.text = movie.name
            // setting the cell to the cell's delegate
            cell.delegate = self
            // setting the text based of isSeen Bool (ternary operator noted below)
            let seenText = movie.isSeen ? "Seen" : "Not Seen"
            // set the title for the button for each cell
            //cell.seenButton.setTitle(seenText, for: .normal)
            
            return cell
        }
        //-- This is conform to UITableViewDataSource --//
        
        func tappedSeenButton(on cell: MovieTableViewCell) {
            guard let indexPath = self.movieTableView.indexPath(for: cell) else { return }
            
            // call the toggleSeen function in the movieController and pass the movie to it
            self.movieController.toggledSeen(at: indexPath)
            // reload the TableViewRow at the indexPath without an animation
            self.movieTableView.reloadRows(at: [indexPath], with: .none)
        }
        
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "ToAddMovie" {
                guard let addMovieViewController = segue.destination as? AddMovieViewController else { return }
                
                addMovieViewController.movieController = self.movieController
            }
        }
        
    }
