//
//  AddMovieTitleViewController.swift
//  Movie List
//
//  Created by Angela Rae Hughes on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(movie: Movie)
    
}





class AddMovieTitleViewController: UIViewController {

    @IBOutlet weak var AddMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddMovieButton(_ sender: UIButton) {
        guard AddMovieTextField.text != nil else { return }
        
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


