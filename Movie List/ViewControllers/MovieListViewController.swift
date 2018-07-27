//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Jonathan T. Miles on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieCellDelegate: class {
    func seenButtonWasTapped(on cell: MovieTableViewCell)
}

class MovieListViewController: UIViewController, UITableViewDataSource, MovieControllerProtocol, MovieCellDelegate {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        movieListTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieListTableView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func seenButtonWasTapped(on cell: MovieTableViewCell) {
        guard let indexPath = movieListTableView.indexPath(for: cell),
            let movie = movieController?.movies[indexPath.row] else { return }
        movieController?.toggleIsSeen(for: movie)
        
        movieListTableView.reloadRows(at: [indexPath], with: .automatic)
    }

    // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        guard let movieCell = cell as? MovieTableViewCell else { return cell }
        // movieCell.titleTextLabel.text = movieController?.movies[indexPath.row].title
        
        let movie = movieController?.movies[indexPath.row]
        movieCell.movie = movie
        
        movieCell.delegate = self
        
        return movieCell
    }
    
    
    
    // Override to support editing the table view.
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let movie = movieController?.movies[indexPath.row] else { return }
            movieController?.deleteMovie(movie: movie)
            movieListTableView.deleteRows(at: [indexPath], with: .fade)
            
        } /*else if editingStyle == .insert {
         // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
         } */
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: - Properties
    
    var movieController: MovieController?
    
    @IBOutlet weak var movieListTableView: UITableView!
}
