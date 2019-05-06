//
//  MoviesListViewController.swift
//  Sprint
//
//  Created by Stephanie Bowles on 5/6/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieTableViewCellDelegate {
    
    let movieController = MovieController()
    
    func seenButtonWasTapped(on cell: MovieTableViewCell) {
        guard let indexPath = movieTableView.indexPath(for: cell) else {return}
        let movie =
            movieController.movies[indexPath.row]
        movieController.toggleSeen(movie: movie)
        movieTableView.reloadRows(at:[indexPath], with: .fade)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell()}
        
        let movie = movieController.movies[indexPath.row]
//        cell.movie = movie
        cell.movieLabel.text = movie.name
        cell.delegate = self
        
        let isSeenText = movie.isSeen ? "Seen" : "Not Seen"
        cell.seenButton.setTitle(isSeenText, for: .normal)
        
        
        return cell
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
//
//
//        guard let movieCell = cell as? MovieTableViewCell else {return cell}
//
//        let movie = movieController.movies[indexPath.row]
////        movieCell.movie = movie
//        movieCell.textLabel?.text = movie.name
//        movieCell.delegate = self
//        //prolly gotta change this
//        return cell
    }
    

    @IBOutlet weak var movieTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.movieTableView.dataSource = self
        self.movieTableView.delegate = self
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.movieTableView.reloadData()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
