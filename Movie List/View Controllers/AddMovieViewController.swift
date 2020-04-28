//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Luis Corvalan on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    
    
    @IBOutlet weak var writtenMovie: UITextField!
    
    
    @IBAction func addMovie(_ sender: Any) {
        
        writtenMovie.text = nil
        
    }
    
    
    
    
}


