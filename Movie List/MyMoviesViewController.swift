//
//  MyMoviesViewController.swift
//  Movie List
//
//  Created by Stuart on 11/16/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MyMoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieControllerProtocol {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesToShow.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        cell.delegate = self as! MovieTableViewCellDelegate
        cell.movie = moviesToShow[indexPath.row]
        
        return cell
    }
    

    
    
    
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var movieController: MovieController?
    var moviesSorted: [Movie] = []
    var moviesToShow: [Movie] = [] { didSet { tableView.reloadData() }}
    
}
