//
//  AddMovieViewController.swift
//  MovieList2_redo
//
//  Created by Craig Belinfante on 7/8/20.
//  Copyright © 2020 Craig Belinfante. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var textField: UITextField!
    @IBAction func addMovie(_ sender: Any) {
        guard let unwrappedMovie = textField.text else {return}
        let movie = Movie(name: unwrappedMovie, seen: true)
        delegate?.movieAdded(movie)
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
