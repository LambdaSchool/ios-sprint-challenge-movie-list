//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_220 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var movieListTableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListCell", for: indexPath)
        
        return cell
    }
}
