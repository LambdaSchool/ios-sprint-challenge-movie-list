//
//  ViewController.swift
//  Movie List
//
//  Created by Ry Bautista on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var movies = [Movie]() // data source
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        movies = []
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        let newMovie = movies[indexPath.row]
        cell.textLabel?.text = newMovie.name
        
        return cell
    }
    
    
}
