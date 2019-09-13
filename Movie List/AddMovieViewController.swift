//
//  addbutton.swift
//  Movie List
//
//  Created by Ry Bautista on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addMovie(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else {return}
    }
}
