//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Andrew Dhan on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit



class MovieListViewController: UIViewController, UITableViewDataSource, MovieTableViewCellDelegate, MovieControllerProtocol{

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        tableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movieController?.movieList.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell() }
        
        cell.movie = movieController?.movieList[indexPath.row]
//        cell.delegate = self // why not do this earlier
        return cell
    }
    
    func toggleHasSeen(for cell: MovieTableViewCell) {
//                guard var movie = movie else { return}
//                if movie.hasSeen{
//                    hasSeenButtonLabel.setTitle("Not Seen", for: .normal)
//                    movie.hasSeen = false
//                } else {
//                    hasSeenButtonLabel.setTitle("Seen", for: .normal)
//                    movie.hasSeen = true
//                }
    }
    
    //Mark: - Properties
    
    var movieController: MovieController?
  
    @IBOutlet weak var tableView: UITableView!
}
