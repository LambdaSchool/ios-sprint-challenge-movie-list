//
//  MovieViewController.swift
//  Movie List
//
//  Created by Welinkton on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class MovieViewController: UIViewController, MovieProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var movieController:  MovieController?
    
    @IBOutlet weak var movieTextField: UITextField!
    
    @IBAction func addMovieButton(_ sender: Any) {
        guard let name = movieTextField.text else {return}
        movieController?.createMovie(name: name, isSeen: false)
    }
    
    // Remove Keyboard when not being touched
    override func touchesBegan(_: Set<UITouch>, with: UIEvent?){
        movieTextField.resignFirstResponder()
    }
    
    
}
