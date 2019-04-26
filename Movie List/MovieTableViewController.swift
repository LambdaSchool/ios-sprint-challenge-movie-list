//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Alex Perse on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    
    }
    
    
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        if movieNameTextField.text?.isEmpty ?? true {
            print("No movie name has been entered.")
        } else {
            guard let movieName = movieNameTextField.text else { return }
            movieController.createMovie(movieName: movieName)
        }
            // guard let function not working here "Value of type 'UITextField?' has no member 'isEmpty'"
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MovieCell" {
            guard let movieVC = segue.destination as? MovieController,
                let cell = sender as? MovieTableViewController else { return }
            
            movieVC.movie = cell.movie
            
        }
    }
    
    let movieController = MovieController()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

//      numberOfRowsInSection
//         return noteController.notes.count
//        Should return the count of the array or dictionary that holds the information I want to display in the table view
//        return MovieController.movies.count
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
// cellForRowAt
//        must return a UITableViewCell; declare a cell using tableview.dequeReusableCell and make sure the reuse identifier matches what you type in Interface Builder
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
    }
    @IBOutlet weak var movieNameTextField: UITextField!
}


