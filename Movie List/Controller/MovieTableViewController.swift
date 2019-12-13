//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Lambda_School_loaner_226 on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController
{
    @IBOutlet weak var movieTableView: UITableView!
    
    var movie: [Movie] = []
    var movieController = MovieController()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        movieTableView.delegate = self
        movieTableView.dataSource = self
        movieTableView.reloadData()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        movieTableView.reloadData()
    }
}

extension MovieTableViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        let movies = movieController.movies[indexPath.row]
        cell.movieLabel.text = movies.movieName
        return cell
        
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Get the new view controller using segue.destination.
        if segue.identifier == "ShowAddMovieVC"
        {
            guard let destination = segue.destination as? AddMovieViewController else {return}
            destination.movieController = movieController
        }
        // Pass the selected object to the new view controller.
    }
    
    
}
