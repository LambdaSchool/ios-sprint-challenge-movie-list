//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Ciara Beitel on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var enterMovieTextField: UITextField!
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

// make the current VC conform to the UITextFieldDelegate
extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}
