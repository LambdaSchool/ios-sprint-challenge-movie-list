//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Rick Wolter on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, MovieControllerProtocol, UITableViewDelegate,UITableViewDataSource,MovieListTableViewCellDelegate  {
    
    
    var movieController: MovieController?
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (movieController?.movies.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieListTableViewCell else { return UITableViewCell() }
        
        cell.delegate = self
        cell.movie = movieController?.movies[indexPath.row]
        return cell
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tableView.reloadData()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func seenButtonTapped(cell: MovieListTableViewCell) {
        
        guard let index = tableView.indexPath(for: cell) else { return }
        
        let movie = movieController?.movies[index.row]
        
        movieController?.toggleHasSeen(movie: movie!)
        tableView.reloadData()
        //tableView.reloadRows(at: [index], with: .automatic)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
