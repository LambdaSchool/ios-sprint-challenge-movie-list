//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Ufuk Türközü on 08.11.19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieHasBeenSeen(cell: MovieTableViewCell)
}

class AddMovieViewController: UIViewController/*, UIPickerViewDataSource, UIPickerViewDelegate*/ {
   
    @IBOutlet weak var EnterMovieTextField: UITextField!
    
    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EnterMovieTextField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieTapped(_ sender: Any) {
        
        if let moviesName = EnterMovieTextField.text, !moviesName.isEmpty {
            
            movieController?.movieWasCreated(title: moviesName)
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

 //   @IBOutlet weak var pickerTextField : UITextField!
    
       
}

extension AddMovieViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}
