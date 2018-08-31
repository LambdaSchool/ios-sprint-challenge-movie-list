//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Scott Bennett on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {
    
    var movieContoller: MovieController?
    
    @IBOutlet weak var movieTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func AddMovie(_ sender: Any) {
        guard let name = movieTextField.text else { return }
        
        movieContoller?.Create(with: name, watched: false)
        
        view.endEditing(true)
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
