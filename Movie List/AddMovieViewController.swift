//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Gavin Murphy on 9/27/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded (_ movie: Movie)
    }


class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    
    var delegate: AddMovieDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addMovieButtonPressed(_ sender: Any) {
        guard let movie = movieTextField.text, !movie.isEmpty
            else { return }
        //print("seen")
        
        let movieTitle = Movie(movie: movie)
        
        delegate?.movieWasAdded(movieTitle)
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
