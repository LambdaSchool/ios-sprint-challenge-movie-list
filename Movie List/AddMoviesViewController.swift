//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Bobby Keffury on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMoviesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MoviesViewSegue" {
            if let addMoviesVC = segue.destination as? AddMoviesViewController {
                
            }
        }
    }
    
    @IBAction func addMovieTapped(_ sender: Any) {
    }
    

}
