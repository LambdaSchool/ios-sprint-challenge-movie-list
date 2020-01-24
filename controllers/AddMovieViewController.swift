//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Brian Vilchez on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
   @IBAction func addMovieButtonPressed(_ sender: Any) {
        
        guard let movieName = enterNameTextFIeld.text else {return}
        
      movieController.addMovie(withTitle: movieName)
        dismiss(animated: true, completion: nil)
    }
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
            }
    
    // MARK: Properties
    var movieController = MovieController()
    @IBOutlet weak var enterNameTextFIeld: UITextField!
    
}
