//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Stuart on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController, UITableViewDelegate/*, UITableViewDataSource*/ {
    
    @IBAction func editTable(_ sender: Any) {
        
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }
    
    @IBOutlet weak var tableView: UITableView!
    let reuseIdentifier = "cell"
}
