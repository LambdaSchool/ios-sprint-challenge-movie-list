//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Chris Gonzales on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

extension MovieListTableViewController: AddMovieDelegate{
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        print(movies)
        dismiss(animated: true, completion: nil)
        MovieTableView.reloadData()
        
    }
}

extension MovieListTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as? MovieListTableViewCell else {return UITableViewCell()}
        let movieCell = movies[indexPath.row]
        cell.movie = movieCell
        return cell
    }
    
    
}

class MovieListTableViewController: UIViewController{

    var movies = [Movie]()
    

    @IBOutlet weak var MovieTableView: UITableView!
    @IBAction func AddMovieButton(_ sender: UIBarButtonItem) {
    }
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddNewMovieSegue"{
            if let addMovieVC = segue.destination as? AddMovieViewController{
                addMovieVC.delegate = self
            }
        }
    }
}
