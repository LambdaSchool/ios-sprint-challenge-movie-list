//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Kevin Stewart on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    
    func movieWasAdded(_ movie: Movie)
}

var delegate: AddMovieDelegate?

class AddMovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Mark: - IBOutlets
    @IBOutlet var userTextField: UITextField!
    
    
    //Mark - IBActions
    @IBAction func addMovieButtonTapped() {
        guard let userText = userTextField.text,
            
            !userText.isEmpty else { return }
            
        var movie = Movie(title: title, seenOrNotSeen: seenOrNotSeen)
            
            if let userTextField = userTextField.text,
                !userTextField.isEmpty {
                movie.init(title: userTextField).append(userTextField)
            }
            
                
                delegate?.movieWasAdded(movie)
            
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


