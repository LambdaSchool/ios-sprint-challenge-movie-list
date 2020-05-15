//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jason Hoover on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


class AddMovieViewController: UIViewController {
    
    
    @IBOutlet weak var movieEntered: UITextField!
    
    
    
    @IBAction func addMovie(_ sender: Any) {
        
        if movieEntered.text != "" {
            movieEntered.placeholder = "Please Enter a Movie"
        } else {
            let newMovie = movieEntered.text
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToTableView" {
            let newMovieVC = segue.destination as? MovieListTableViewController
            
            // "Hey newFriendVC, I'm the one to talk to in order to add a friend to the array"
            newMovieVC?.delegate=self
        }
    }
    
}

