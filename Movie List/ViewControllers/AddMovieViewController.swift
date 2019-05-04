//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Corey Sessions on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    @IBOutlet weak var addMovieTextField: UITextField!
    @IBOutlet weak var addMovieBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addMovieBtn.layer.cornerRadius = 5
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieBtnPressed(_ sender: UIButton) {
    }
    
    
}
