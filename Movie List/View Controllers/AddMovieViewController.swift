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

    @IBOutlet weak var txtMovieTitle: UITextField!
    
    @IBOutlet weak var seenNotSeenSegmentedControl: UISegmentedControl!

    var delegate: AddMovieDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
        
        if movieSeen == false {
            self.title = "movie seen"
        } else {
            title = "movie not seen"
        }
        
        guard let movieTitle = txtMovieTitle.text else {
            return
            
        }
        
        delegate?.addMovie(Movie(title: movieTitle, seen: movieSeen))
    }
}
