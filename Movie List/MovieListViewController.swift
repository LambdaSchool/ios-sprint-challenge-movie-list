//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_220 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var movieController = MovieController()
    
    
    @IBOutlet weak var movieListTableView: UITableView!
   
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        movieListTableView.delegate = self
        movieListTableView.dataSource = self
        movieListTableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        movieListTableView.reloadData()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListCell", for: indexPath) as? MovieListTableViewCell else {return UITableViewCell()}
        let movie = movieController.movies[indexPath.row]
        cell.movieTitleLabel.text = movie.movieTitle
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "ShowAddMovieView"
        {
            guard let destination = segue.destination as? AddMovieViewController else {return}
            destination.movieController = movieController
        }
    }
    
   
    
    
    
    
    
    
    
}
