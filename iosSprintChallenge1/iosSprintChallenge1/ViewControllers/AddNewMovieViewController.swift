//
//  AddNewMovieViewController.swift
//  iosSprintChallenge1
//
//  Created by Jonathan Ferrer on 4/26/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

import UIKit

class AddNewMovieViewController: UIViewController, MoviesPresenter{
    
    var movieController: MovieController?
    
    @IBOutlet weak var addNewMovieTextField: UITextField!

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

    @IBAction func addMovieButtonPressed(_ sender: Any) {
        
        //print("Movie Added")
        
        guard let movie = addNewMovieTextField.text else { return }
        
        movieController?.createMovie(title: title!)
        
        
    }
    
}
