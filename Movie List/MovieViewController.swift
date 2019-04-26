//
//  MovieViewController.swift
//  Movie List
//
//  Created by Christopher Aronson on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, MoviesPresenter {
    var movieController: MovieController?
    
    @IBOutlet weak var movieTitleTextFiled: UITextField!
    
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
        
        guard let title = movieTitleTextFiled.text else { return }
        
        movieController?.createMovie(movieTitle: title)
    }
    
}
