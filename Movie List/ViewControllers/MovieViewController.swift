//
//  MovieViewController.swift
//  Movie List
//
//  Created by Ryan Murphy on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    let movieControler = MovieController()
    
    
    @IBOutlet var movieNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        
        if let name = movieNameTextField.text{
        
        movieControler.createMovie(withMovie: name)
            print(movies)
        }
        
        //creates a new movie from movieTextInput
        
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
