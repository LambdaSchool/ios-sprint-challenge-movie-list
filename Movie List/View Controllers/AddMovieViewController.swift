//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Kelson Hartle on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    // Outlets and Actions
    @IBOutlet weak var addMovieTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
