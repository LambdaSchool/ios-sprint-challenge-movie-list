//
//  MovieDetailViewController.swift
//  Movie List
//
//  Created by Brian Cobb on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

@IBOutlet var movieTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
var tableViewController: MovieTableViewController?
    
@IBAction func addClassicButtonTapped(_ sender: Any) {
    

guard let newMovie = movieTextfield.text else { return}
tableViewController?.newMovies.append(newMovie)
navigationController?.popViewController(animated: true)

}
}
