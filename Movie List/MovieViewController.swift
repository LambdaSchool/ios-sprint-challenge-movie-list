//
//  ViewController.swift
//  Movie List
//
//  Created by Diante Lewis-Jolley on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addMovieButton(_ sender: Any) {
        guard let movie = textField.text else { return }
        MovieController.shared.addMovie(movie)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


   
}



