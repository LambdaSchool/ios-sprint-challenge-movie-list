//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Kat Milton on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieViewControllerDelegate: class {
    func addMovie(to cell: MovieTableViewCell)
    
}

class AddMovieViewController: UIViewController {
    
    // MARK: - Outlets and Properties
    @IBOutlet var movieTextInput: UITextField!
    
    
    weak var delegate: AddMovieViewControllerDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // MARK: - IBActions
    @IBAction func addMovieTapped(_ sender: Any) {
          
        
        guard movieTextInput.text != nil else { return }

        if let newMovie = movieTextInput.text {
            let addedMovie = Movie(name: newMovie, seen: false)
            MovieController().movies.append(addedMovie)
        }
        navigationController?.popToRootViewController(animated: true)
    }
    
    


   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "returnToList" {
//            let moviesVC = segue.destination as! MoviesViewController
//            moviesVC.callback = { newMovie in
//                print(newMovie)
//
//            }
//        }
//    }
 

}



