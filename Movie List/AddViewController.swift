//
//  AddViewController.swift
//  Movie List
//
//  Created by Jocelyn Stuart on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var pageTitle: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        guard let text = textField.text else {return}
        
        if !text.isEmpty {
            MovieController.shared.addMovie(textMovie: text)
            textField.text = nil
        }
    }
    
    /*let movieController = MovieController()
    let movieViewController = MovieViewController()*/
    
    
    
}
