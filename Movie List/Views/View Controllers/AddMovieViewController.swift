//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Michael Flowers on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    var movieController = MovieController()

    @IBOutlet weak var addMovieTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonPressed(_ sender: UIButton) {
        //check to see if there is text in the text field
        guard let movie = addMovieTextField.text, !movie.isEmpty else { return }
        
        //there is text so now we can create a movie
        movieController.createMovie(name: movie)
        
        //now we can segue to the movie list scene.
        performSegue(withIdentifier: "toMovieSegue", sender: nil)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        //pass the movieController over to the movie list scene
        if segue.identifier == "toMovieSegue" {
            let movieVC = segue.destination as! MovieTableViewController
            movieVC.movieController = movieController
        }
    }
    

}
