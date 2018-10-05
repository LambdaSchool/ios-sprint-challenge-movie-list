//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Nikita Thomas on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, MovieModelProtocol {
    var moviewModel: MovieModel?

    @IBOutlet weak var tableView: UITableView!
    // Set the DataSource of it's tableView to the movieModel

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
        tableView.dataSource = moviewModel!
        
    }
    
    

}



