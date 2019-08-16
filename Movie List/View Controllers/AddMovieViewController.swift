//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Austin Potts on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    
    
    var movieController: MovieController?
    
    @IBOutlet weak var titleTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButton(_ sender: Any) {
        guard let newTitle = titleTextField.text, titleTextField.text != "" else{return}
        
        let newMovie = Movie(movieTitle: newTitle)
        movieController?.movie.append(newMovie)
        navigationController?.popViewController(animated: true)
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
