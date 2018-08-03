//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Iyin Raphael on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, MovieNameControllerProtocol {
    
    
    var movieNameController: MovieNameController?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieNameController?.movieNames.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        guard let newCell = cell as? MovieTableViewCell else {return cell}
        let movie = movieNameController?.movieNames[indexPath.row]
        
        newCell.movieName = movie
        return newCell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //Delete the model object before we delete cell
            guard let movie = movieNameController?.movieNames[indexPath.row] else {return}
            movieNameController?.delete(movie: movie)
            
            //the use is swiping to delete a cell
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    

}
