//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Eugene White on 5/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var addMovie: UIButton!
    @IBOutlet weak var EnterMovie: UITextField!
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func AddmovieTapped(_ sender: Any) {
        if let unwrappedMovie = EnterMovie.text, !unwrappedMovie.isEmpty {
            
            let movie = Movie(movieName: unwrappedMovie, seen: true)
             delegate?.addMovie(movie)
        }
        
        
        
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
protocol AddMovieDelegate {
func addMovie(_ movie: Movie)
    
}
