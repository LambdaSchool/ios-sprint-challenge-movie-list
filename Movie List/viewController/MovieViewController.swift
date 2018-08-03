//
//  MovieViewController.swift
//  Movie List
//
//  Created by Iyin Raphael on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, MovieNameControllerProtocol {

    var movieNameController: MovieNameController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
 
   
    //addmovie takes the text creates an instance of movie name
    @IBAction func addMovie(_ sender: Any) {
        guard let movie = movieTextField.text else {return}
        
        movieNameController?.CreateMovieName(name: movie)
        
        movieTextField.text = ""
        
    }
    
    
    //the textField where movie choice is typed
    
    @IBOutlet weak var movieTextField: UITextField!
    
}
