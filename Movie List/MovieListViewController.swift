//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Moin Uddin on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MovieTableViewCellDelegate, MovieControllerProtocol {
    func seenButtonTapped(on cell: MovieTableViewCell) {
        guard let indexPath = movieList.indexPath(for: cell) else { return }
        guard let movie = movieController?.movies[indexPath.row] else { return }
        movieController?.toggleSeen(movie: movie)
        movieList.reloadRows(at: [indexPath], with: .automatic)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        movieList.reloadData()
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        guard let movie = movieController?.movies[indexPath.row] else { return UITableViewCell() }
        cell.delegate = self
        cell.movie = movie
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == .delete) {
            guard let movie = movieController?.movies[indexPath.row] else { return }
            movieController?.delete(movie: movie)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        movieList.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var movieList: UITableView!
    
    var movieController: MovieController?
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
