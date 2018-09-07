//
//  AddMovieViewController.swift
//  MovieList2
//
//  Created by Welinkton on 9/7/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieListProtocol {

    // conform to protocol
    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Remove Keyboard when not being touched
    override func touchesBegan(_: Set<UITouch>, with: UIEvent?){
        nameTextField.resignFirstResponder()
        
    }
    
    // allows user to enter text
    @IBOutlet weak var nameTextField: UITextField!

    // creates new movie label
    @IBAction func addMovie(_ sender: Any) {
        guard let name = nameTextField.text else {return}
        
        movieController?.createAMovie(name: name, isSeen: false)
        
    }

}
