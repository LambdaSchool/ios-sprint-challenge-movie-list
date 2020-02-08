//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jarren Campos on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    @IBOutlet var nameOfMovie: UITextField!
    @IBOutlet var seenTextField: UITextField!
    
    var myMovie: MyMovie?
    var defaultMovie: MyMovie = MyMovie(title: "", seen: true)
    @IBAction func addMovie(_ sender: Any) {
        movies.append(MyMovie(title: "\(nameOfMovie.text ?? "\(defaultMovie)")", seen: boolConverter()))
        
        loadView()
    }
    func boolConverter() -> Bool{
        var boolHolder = true
        if seenTextField.text == "yes" {
            boolHolder = true
            return boolHolder
        }
        boolHolder = false
        return boolHolder
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
