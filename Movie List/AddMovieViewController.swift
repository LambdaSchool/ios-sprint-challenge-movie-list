//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var titleTextField: UITextField!
    var movieContoller: MovieController?
    
    @IBAction func addMovie(_ sender: UIButton) {
        //Make sure there is a title in the field
        guard let title = titleTextField.text, title != "" else { return }
        
        //Create a new movie
        movieContoller?.createMovie(title: title)
        
        //Dismiss keyboard
        view.endEditing(true)
        
        //Refresh UI
        updateViews()
    }
    
    func updateViews() {
        titleTextField.text = ""
    }
    
    
}
