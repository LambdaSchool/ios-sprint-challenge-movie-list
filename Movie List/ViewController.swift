//
//  ViewController.swift
//  Movie List
//
//  Created by Mitchell Budge on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

var movies = ["Scott Pilgrim vs. the World", "Avengers: Endgame", "Black Panther"]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var moviesTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "addMovieCell")
        cell.textLabel?.text = movies[indexPath.row]
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            movies.remove(at: indexPath.row)
            moviesTableView.reloadData()
            
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        moviesTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
