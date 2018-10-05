//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lotanna Igwe-Odunze on 10/5/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

   
    @IBOutlet weak var movieEntry: UITextField!
    
    @IBAction func submitMovie(_ sender: Any) {
        
        let entry = Movie(title: movieEntry.text!, seen: false)
        
        movieCollection.append(entry)
        movieEntry.text = ""
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

