//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Luis Corvalan on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    var movie = String()
    
    @IBOutlet weak var writtenMovie: UITextField!
    
    
    @IBAction func addMovie(_ sender: Any) {
        
        movie = writtenMovie.text ?? ""
        
        if movie == "" {
            
        } else {
            
            
            writtenMovie.text = nil
        }
        
        
        
        
    }
    
    
    
    
}


