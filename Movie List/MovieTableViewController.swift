//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by denis cedeno on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {

   
        var movie: [Movie] = []
        @IBOutlet weak var tableView: UITableView!
        
        override func viewDidLoad() {
            super.viewDidLoad()

            
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 5
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let mCell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? movieTableViewCell else {
                    return UITableViewCell()}

                mCell.movie = movie[indexPath.row]
                mCell.delegate = (self as! MovieTableViewCellDelegate)
                return mCell
            }
        }
    }


//    extension MovieTableViewController: MovieTableViewCellDelegate {
//        func seenButtonWasTapped(cell: MovieTableViewCell)
//
//        cell.seenButton.setTitle("not seen", for: [])
//}

