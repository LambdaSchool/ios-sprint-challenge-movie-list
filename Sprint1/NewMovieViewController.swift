//
//  NewMovieViewController.swift
//  Sprint1
//
//  Created by Victor  on 4/26/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit

class NewMovieViewController: UIViewController, MoviePresenter {
    var movieController: MovieController?
    
    //created outlets for variables
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var movieTextField: UITextField!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //changed the border of the submit button
        submitButton.layer.masksToBounds = true
        submitButton.layer.cornerRadius = 10
        
        //changed the display of the nav bar
        self.navigationController?.navigationBar.topItem?.title = "Add New Movie"
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
//        let blur = UIBlurEffect(style: .regular)
//        let blurView = UIVisualEffectView(effect: blur)
//        blurView.frame = image.bounds
//        image.addSubview(blurView)
        
        //change image view
        image.alpha = 0.8
        
    }
    
    @IBAction func submitButtonPressed(_ sender: Any) {
        
        //checking for text in field
        guard let text = movieTextField.text else {
            print("no text")
            
            //error handling
            let alert = UIAlertController(title: "No Movie", message: "Please type the name of a movie.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
            
            return
            
        }
        if text == "" {
            print("No text")
            let alert = UIAlertController(title: "No Movie", message: "Please type the name of a movie.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
            return
        }
        guard let movieController = movieController else {
            print("no controller")
            return
        }
        //creating new moview object
        movieController.createMovie(name: text)
        print("created Movie")
        //ui
        let alert = UIAlertController(title: "New Movie Submitted", message: "Movie Will Be Added To List", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
        movieTextField.text = ""
    }
    
}
