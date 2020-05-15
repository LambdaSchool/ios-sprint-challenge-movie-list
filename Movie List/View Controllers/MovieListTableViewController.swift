//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Angela Rae Hughes on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        

        
        // Do any additional setup after loading the view.
    }
    
    extension MovieListTableViewController: AddMovieDelegate {
        func movieWasAdded(movie: Movie) {
            movies.append(movie)
            tableView.reloadData()
            
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
