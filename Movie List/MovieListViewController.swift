//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Nichole Davidson on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, MovieAddedDelegate {

    var moviesOnList: [Movie] = []
    
    
       override func viewDidLoad() {
           super.viewDidLoad()
       }
    
    func movieWasAdded(movie: Movie) {
        moviesOnList.append(movie)
    }
    
   
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return moviesOnList.count
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
