//
//  MovieViewController.swift
//  Movie List
//
//  Created by Waseem Idelbi on 12/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet var tableView: MovieListTableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = MovieListTableView.self as? AddMovieDelegate
            }
        }
    }

}
