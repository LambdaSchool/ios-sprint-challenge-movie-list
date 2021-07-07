//
//  ViewController.swift
//  Movie List
//
//  Created by Angel Buenrostro on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

   @IBAction func add(_ sender: Any) {
    guard let text = textField.text, !text.isEmpty else { return }
    List.shared.addItem(text)
    textField.text = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
