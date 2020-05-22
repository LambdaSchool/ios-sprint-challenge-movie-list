//
//  MovieListViewController.swift
//  Movie
//
//  Created by Drew Miller on 5/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


class MovieListViewController: UIViewController, UITableViewDelegate {
    
    var movies: [Movie] = []
    
    
    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var tableView: MovieListTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "addMovieShow" {
            if let addVC = segue.destination as? AddMovieViewController {
                addVC.delegate = self
            }
        }
        // Pass the selected object to the new view controller.
    }
    
    
 //   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
   //    
 //   }
}
    

extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieDetailTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        cell.textLabel?.text = movie.movie
        return cell
        
    }
    
        
    }
    
    
    
    // MARK: - Navigation

    //In a storyboard-based application, you will often want to do a little preparation before navigation
    
    


extension MovieListViewController: AddMovieDelegate {
    func addNewMovie(movie: Movie) {
    movies.append(movie)
    tableView.reloadData()
    }
}
