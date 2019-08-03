//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Bobby Keffury on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {

    
    var movies: [Movie] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieViewSegue" {
            if let movieVC = segue.destination as? MoviesViewController {
                
            }
        }
        
    }
    
    @IBAction func addTapped(_ sender: Any) {
    }
    
    @IBAction func notSeenTapped(_ sender: Any) {
    }
    
}


