//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Corey Sessions on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {

    @IBOutlet weak var movieTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.delegate     = self
        movieTableView.dataSource   = self

        // Do any additional setup after loading the view.
    }
    

}

extension MovieListViewController: UITableViewDelegate {
    
}

extension MovieListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
