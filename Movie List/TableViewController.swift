//
//  TableViewController.swift
//  Movie List
//
//  Created by Dustin Koch on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    import UIKit
    
    class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
        let reuseIdentifier = "cell"
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return Model.shared.movieCount()
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
            
            let movies = Model.shared.movies
            let movie = movies[indexPath.row]
            cell.textLabel?.text = movie
            
            return cell
            
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
        
        /*
         override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         tableView.dataSource = self
         tableView.delegate = self
         tableView.reloadData()
         
         }
         
         */
        
        
        
}
