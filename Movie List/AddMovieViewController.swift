  //
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Sezen Bozdogan on 08.11.19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
  
  protocol AddMovieDelegate {
    func movieWasCreated(movie: Movie)
  }

class AddMovieViewController: UIViewController {

    @IBOutlet weak var NewMovie: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NewMovie.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddMovieTapped(_ sender: Any) {
        if let moviesname = NewMovie.text, !moviesname.isEmpty {
            
            var movie = Movie(moviesname: "")
             
            delegate?.movieWasCreated(movie: movie)
           
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
    extension AddMovieViewController: UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        }
  }
