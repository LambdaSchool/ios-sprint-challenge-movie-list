//
//  AddViewController.swift
//  Movie List
//
//  Created by Stuart on 11/23/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func add(_ sender: Any) {
       
        guard let text = textField.text, !text.isEmpty else { return }
        
        Model.shared.addValue(text)
        
        textField.text = nil
    }
    
}
