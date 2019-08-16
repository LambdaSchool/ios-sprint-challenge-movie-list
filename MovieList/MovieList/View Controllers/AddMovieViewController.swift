//
//  AddMovieViewController.swift
//  MovieList
//
//  Created by Joshua Franklin on 8/16/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    
    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addButtonTapped(_ sender: Any) {
        guard let newTitle = titleTextField.text, titleTextField.text != "" else {return}
        let newMovie = Movie(title: newTitle, body: newTitle)
        movieController?.movies.append(newMovie)
        navigationController?.popViewController(animated: true)
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

