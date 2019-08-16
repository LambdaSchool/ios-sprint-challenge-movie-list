//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Uptiie on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class MovieListViewController: UIViewController {

    private var movies: [Movie] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navC = segue.destination as? UINavigationController,
            let destVC = navC.viewControllers.first as? AddMovieViewController {
            destVC.delegate = self
        }
    }
    
    private func doSomething() {
        
    }
}

extension MovieListViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
    }
}

extension MovieListViewController: UI

