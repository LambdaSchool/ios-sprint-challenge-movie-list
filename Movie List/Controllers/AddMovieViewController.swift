//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Steven Leyva on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MoviePresenter {
    var movieController: MovieController?

    @IBOutlet var movieText: UITextField!
    
    //var delegate: AddsStudentDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        
        guard let movie = movieText.text
        
        else { return }
        
        
        
    }
    }
    
    
    

