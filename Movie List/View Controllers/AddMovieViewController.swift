//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Mike Nichols on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var seenSwitch: UISwitch!
    @IBOutlet weak var movieTitle: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        
        guard let movieTitle = movieTitle.text
            else { return }
        
        let movie: Movie = Movie(title: movieTitle, haveSeen: seenSwitch.isOn)
        
        moviesList.append(movie)
        dismiss(animated: true, completion: nil)
        
    }
}

