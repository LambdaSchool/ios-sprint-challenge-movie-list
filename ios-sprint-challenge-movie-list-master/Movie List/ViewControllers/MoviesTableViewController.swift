//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by J-Skenandore on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var movie: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
