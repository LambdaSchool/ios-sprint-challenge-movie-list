//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Steven Leyva on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieSelectionDelegate: AnyObject {
    func newMovieWasAdded(movie: Movie)

}

class MoviesTableViewController: UITableViewController, MoviePresenter {

    var movieController: MovieController?
   weak var delegate: MovieSelectionDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func unseenButtonPressed(_ sender: Any) {
        print("seen")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return movieController?.movies.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)

        
        let movie = movieController?.movies[indexPath.row]
        
        cell.textLabel?.text = movie?.text
    
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let movie = movieController?.movies[indexPath.row] else { return }
        
        delegate?.newMovieWasAdded(movie: movie)
    }


}
//extension TestTableViewController: AddStudentDelegate
//  func newStudentWasAdded(with name: String) {

