//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jake Connerly on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
 var movieController = MovieController()
    //
    // MARK: - Outlets
    //
    @IBOutlet weak var userMovieTextField: UITextField!
    //
    // MARK: - Actions
    //
    
    @IBAction func addMoveTapped(_ sender: UIButton) {
        if userMovieTextField.text != "" {
            guard let userMovieName = userMovieTextField.text else { return }
            let userMovie = Movie(movieName: userMovieName)
            var updatedArray: [Movie] = []
            updatedArray.append(userMovie)
            movieController.favoriteMoviesArray.append(userMovie)
            print("Loded movies in addMovieTapped")
            print(movieController.favoriteMoviesArray.count)
            _ = navigationController?.popViewController(animated: true)
        }else {
            //add alert
        }
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
        let MovieListVC = segue.destination as! MovieListViewController
        // Pass the selected object to the new view controller.
        let selectedMovie = movieController.userMovie
        MovieListVC.movieController.favoriteMoviesArray.append(sele)
    }
 
*/
}
