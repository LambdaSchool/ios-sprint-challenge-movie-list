//
//  addMovieViewController.swift
//  Movie List
//
//  Created by Osha Washington on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
    }

class addMovieViewController: UIViewController {
    
    @IBOutlet weak var NewMovie: UITextField!
    
    var delegate: AddMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NewMovie.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddButtonTapped(_ sender: Any) {
        if let movieName = NewMovie.text, !movieName.isEmpty {
            
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
