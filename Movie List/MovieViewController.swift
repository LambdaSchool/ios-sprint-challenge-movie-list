//
//  MovieViewController.swift
//  Movie List
//
//  Created by Eugene White on 5/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UITableViewController, AddMovieDelegate{
    
    
    var movieList: [Movie] = [Movie(movieName: "The Pianist", seen: true)]
    var delegate: AddMovieDelegate?
    
    
    @IBOutlet var movieListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.}
    
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return movieList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
            return UITableViewCell.init()
        }
        
        let movie = movieList[indexPath.row]
        self.tableView = tableView
        cell.movie = movie
        return cell
        
    }

    func addMovie(_ movie: Movie) {
        movieList.append(movie)
        print("Asdasdsad")
        tableView.reloadData()
        
        _ = navigationController?.popViewController(animated: true)
          
        }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MovieViewController" {
            if let destination = segue.destination as? AddMovieViewController {
                destination.delegate = self
            }
        }
    }

}
    
    

