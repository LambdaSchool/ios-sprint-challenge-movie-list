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
        guard let name = movieResponse.text else {return}
        
        if (movieResponse.text != "" && movieResponse.text != nil) {
        self.movieController?.createMovie(name: name, isSeen: false)
        navigationController?.popViewController(animated: true)
//        movieResponse.text = ""
        } else {
            self.movieResponse.placeholder = "Enter Name Here"
            let alert = UIAlertController(title: "Error", message: "Please input Movie", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {_ in
                print("hit ok")
            }))
            self.present(alert, animated:true)
        }
        
        
        
    }
    
}
