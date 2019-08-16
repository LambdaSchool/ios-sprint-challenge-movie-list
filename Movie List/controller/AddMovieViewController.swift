//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by brian vilchez on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

  
    @IBOutlet weak var movieNameTextfield: UITextField!
    
    @IBOutlet weak var firstReasonTextfield: UITextField!
    
    @IBOutlet weak var secondReasonTextfield: UITextField!
    
    @IBOutlet weak var thirdReasonTextfield: UITextField!
    
    @IBAction func cancelTapped(_ sender: Any) {
    }
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
    }
    
    @IBOutlet weak var yesOrNoButton: UISegmentedControl!
    
    @IBAction func yesOrNoTapped(_ sender: UISegmentedControl) {
    }
    
}
