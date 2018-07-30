//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {

    @IBOutlet weak var addMovieTextfield: UITextField!
    
    var movieController: MovieController?

    @IBAction func addMovie(_ sender: Any) {
        
        guard let name = addMovieTextfield.text else {return}
        
        movieController?.createMovie(with: name )
        print(name)
        addMovieTextfield.text = ""
        addMovieTextfield.resignFirstResponder()
    }
    
    

}
