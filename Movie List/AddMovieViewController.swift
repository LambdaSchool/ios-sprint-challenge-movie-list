//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Danielle Blackwell on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UITableViewController {

    @IBOutlet weak var MovieTextField: MovieTextField!
   
    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    @IBAction func AddMovieTapped( _sender: Any) {
        guard  let movieName = MovieTextField.text, MovieTextField.text != "" else { return }
       movieController?.movies.append(movieName)
        navigationController?.popViewController(animated: true)
        
        
    }

}
