//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Sam Gutierrez on 5/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {
    
    @IBOutlet weak var MovieTableView: UITableView!
    
    var movie: [Movie] = [Movie(name: "Star Wars 2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        MovieTableView.delegate = self
        MovieTableView.dataSource = self
        
    }
}



extension MoviesTableViewController: UITableViewDelegate{
    
}

extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = MovieTableView.dequeueReusableCell(withIdentifier: "NewMovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        
        return cell
        
    }
    
    
}
