//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Casualty on 8/4/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import UIKit

var movieSeen: Bool = true

class AddMovieViewController: UIViewController {
    
    // Adding UITextField and UISegmentedControl
    @IBOutlet weak var txtMovieTitle: UITextField!
    
    @IBOutlet weak var seenNotSeenSegmentedControl: UISegmentedControl!

    var movieDelegate: AddMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        // There is nothing to do :(
    }
    
    
    @IBAction func segmentedChanged(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            movieSeen = true
        } else {
            movieSeen = false
        }
        
        return
    }
    
    
    @IBAction func addMovieTapped(_ sender: Any) {
    
        guard let movieTitle = txtMovieTitle.text else {
            return
            
        }
        
        movieDelegate?.addMovie(Movie(title: movieTitle, seen: movieSeen))
    }
}
