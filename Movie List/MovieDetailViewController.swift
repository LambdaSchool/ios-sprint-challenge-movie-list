//
//  MovieDetailViewController.swift
//  Movie List
//
//  Created by Brian Cobb on 4/27/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet var movieTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var tableViewController: MovieTableViewController?
   
    @IBAction func addButtonTappeed(_ sender: Any) {
    
        guard let newMovie = movieTextField.text else { return}
        
    tableViewController?.newMovies.append(newMovie)
    //Navigation sends you back to previous screen.
    navigationController?.popViewController(animated: true)
    }
    
    
    
    
    
}
