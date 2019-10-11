//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Rick Wolter on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate: class {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    
    
    
    @IBAction func addMovieTextField(_ sender: UITextField) {
    }
    
    
    
    
    
    
    @IBAction func addMovieButtonClicked(_ sender: UIButton) {
        
        guard let name = nameTextField.text
        
        
        
        
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
