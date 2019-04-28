//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Brian Vilchez on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    
    @IBOutlet weak var enteredMovieTextField: UITextField!
    

    @IBAction func AddMovieButtonPressed(_ sender: Any) {
        
        guard let movie = enteredMovieTextField.text else   { return }
        
       
        
    }
    
    
override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
