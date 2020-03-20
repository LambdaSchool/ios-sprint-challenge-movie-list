//
//  NewMovieViewController.swift
//  Movie List
//
//  Created by Marissa Gonzales on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol NewMovieDelegate {
    func movieWasAdded(movie: Movie)
}




class NewMovieViewController: UIViewController {
    
    // Delegate
    var delegate: NewMovieDelegate?
    
    
    // Outlet

    @IBOutlet weak var addMovieTextlabel: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func AddMovieButton(_ sender: Any) {
        
        guard let newMovie = addMovieTextlabel.text else {
            return
        }
        
        let myMovie = Movie(name: newMovie, seen: true)
           
//        if let newMovie = addMovieTextlabel.text {
//            movieNameLabel.append(movieNameLabel)
//        }
        delegate?.movieWasAdded(movie: myMovie)
        
        
        
        
        
    }
    
   
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
   

}
