//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Dongwoo Pae on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    var movieController = MovieController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        guard let movieListTableCell = cell as? MovieListTableViewCell else {return cell}
        let index = movieController.names[indexPath.row]
        movieListTableCell.names = index
        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToAddNewMovieVC" {
            guard let addNewMovieListVC = segue.destination as? AddNewMovieListViewController else {return}
            addNewMovieListVC.movieController = movieController
        }
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
    }
    

}
