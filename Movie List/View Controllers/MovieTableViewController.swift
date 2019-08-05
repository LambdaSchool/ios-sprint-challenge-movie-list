//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Jessie Ann Griffin on 8/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {

    
    @IBOutlet weak var movieListTableView: UITableView!
    
    var movieList: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "AddMovieShowSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
}

extension MovieTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        return cell
    }
    
    
}

extension MovieTableViewController: AddNewMovie {
    func newMovieWasAdded(_ movie: Movie) {
        movieList.append(movie)
        dismiss(animated: true, completion: nil)
        movieListTableView.reloadData()
    }
    
    
}
