//
//  MovieViewController.swift
//  Movie List
//
//  Created by patelpra on 9/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieTableViewCellDelegate {
    
    
    let movieController = MovieController()
    
    @IBOutlet weak var movieTableView: UITableView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        self.movieTableView.delegate = self
        self.movieTableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.movieTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
            as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = self.movieController.movies[indexPath.row]
        cell.nameLabel.text = movie.name
        cell.delegate = self
        let seenText = movie.isSeen ? "Seen" : "Not Seen"
        cell.seenButton.setTitle(seenText, for: .normal)
        
        return cell
        
    }
    
    func tappedSeenButton(on cell: MovieTableViewCell) {
        guard let indexPath = self.movieTableView.indexPath(for: cell) else { return }
        
        self.movieController.toggledSeen(at: indexPath)
        self.movieTableView.reloadRows(at: [indexPath], with: .none)
    }
    


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToAddMovie" {
            guard let addMovieViewController = segue.destination as? AddMovieViewController else {
                    return }
            
            addMovieViewController.movieController = self.movieController
        }
    }
}


