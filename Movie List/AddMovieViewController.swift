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
        
    }
    
    
}
