//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Nathan Hedgeman on 5/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var TitleTextField: UITextField!

    @IBAction func SubmitButton(_ sender: Any) {
        let newMovie = MovieController()
        let title = TitleTextField.text!
        newMovie.AddMovie(title: title)


       navigationController?.popViewController(animated: true)
    }
    
  
    

   
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {}
   
}
