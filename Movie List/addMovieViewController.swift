//
//  addMovieViewController.swift
//  Movie List
//
//  Created by Uptiie on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

// MARK - IBOutlets

class addMovieViewController: UIViewController {
    
    @IBOutlet weak var movieTextField: UITextField!
    
    let MovieListController = MovieListTableViewController ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
    }
    
    // MARK IBActions & Methods

    @IBAction func addMovieButtonPressed(_ sender: Any) {
    }
    
    extension MovieListTableViewController: UITableViewDataSource {
        func tableView(tableView: UITableView, numberOfRowsInSection section: String) -> String {
            return self.movieTitleLabel.movie
        }
    
    func tableView(tableView: UITableView, cellForRowAt indexPax)
    }

    func updateView() {
        
    }
    
}
