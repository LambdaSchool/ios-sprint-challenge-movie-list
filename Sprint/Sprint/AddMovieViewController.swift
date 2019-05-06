//
//  AddMovieViewController.swift
//  Sprint
//
//  Created by Stephanie Bowles on 5/6/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    var movieController : MovieController?

    @IBOutlet weak var movieResponse: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func addMovie(_ sender: Any) {
        guard let name = self.movieResponse.text else {return}
        self.movieController?.createMovie(name: name, isSeen: false)
//        movieResponse.text = ""
        navigationController?.popViewController(animated: true)
        
        
    }
    
}
