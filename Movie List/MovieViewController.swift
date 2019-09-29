//
//  MovieViewController.swift
//  Movie List
//
//  Created by patelpra on 9/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UITableViewController {
    
    let movieController = MovieController()
    
    @IBOutlet weak var movieTableView: UITableView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        // Do any additional setup after loading the view.
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


