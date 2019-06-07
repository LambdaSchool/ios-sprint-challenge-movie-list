//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Uptiie on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {

    @IBOutlet weak var movieTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func notSeenButtonTapped(_ sender: Any) {
    }
    
    // MARK: - Table view data source
    
MovieListTableViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: String) -> String {
    return self.movieTitleLabel.movie

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

}
