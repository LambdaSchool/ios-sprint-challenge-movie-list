//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, MovieControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }

    @IBOutlet weak var tableView: UITableView!
    var movieContoller: MovieController?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        
        return cell
    }
    
}
