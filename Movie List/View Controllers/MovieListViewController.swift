//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Chad Parker on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
