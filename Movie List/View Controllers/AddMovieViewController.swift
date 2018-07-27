//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Linh Bouniol on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    var movieController: MovieController?
    
    @IBOutlet var movieTextField: UITextField!
    
    @IBAction func addMovie(_ sender: Any) {
        guard let name = movieTextField.text else { return }
        
        movieController?.createMovie(name: name, isSeen: false)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
