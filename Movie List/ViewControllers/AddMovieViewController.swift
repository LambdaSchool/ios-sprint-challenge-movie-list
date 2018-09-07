//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Rick Wolter on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {

    
    // MARK: - Outlets and Properties
    @IBOutlet weak var enterMovieTextField: UITextField!
   
    var movieController: MovieController?
    
    
    
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addMovieButton(_ sender: Any) {
    
        guard let text = enterMovieTextField.text else {return}
        movieController?.createMovie(movieName: text)
        enterMovieTextField.text = ""
        
    }
    
}
