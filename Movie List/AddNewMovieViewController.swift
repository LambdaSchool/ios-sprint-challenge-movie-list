//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Rick Wolter on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddNewMovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func addMovie(_ sender: Any){
        guard let movieTitle = moviesToAddTextField.text
            else {return}
        
        movieController.creatMovie(title: movieTitle)
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

    @IBOutlet weak var moviesToAddTextField: UITextField!
    let movieController = MovieController()
}
