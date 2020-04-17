//
//  NewMovieViewController.swift
//  Movie List
//
//  Created by Nonye on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movies)
}

class NewMovieViewController: UIViewController {

    @IBOutlet weak var movieTextField: UITextField!
    
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func addMovieTapped(_ sender: Any) {
    }
    
        
        
        
        
        
        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
