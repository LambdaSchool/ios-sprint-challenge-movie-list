//
//  AddMovieVC.swift
//  Movie List
//
//  Created by Kenny on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieVC: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    //save:
    @IBOutlet weak var saveBtnOut: UIButton!
    @IBAction func saveBtnWasTapped(_ sender: UIButton) {
        if saveBtnOut.isEnabled {
            if nameField.text != "" {
                let movie = Movie(name: nameField?.text)
                delegate?.movieWasAdded(movie)
                self.dismiss(animated: true, completion: nil)
            }
            
        }
    }
    @IBAction func cancelBtnWasTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension AddMovieVC: UITextFieldDelegate {
  //TODO: Implement functionality (disable/enable button etc..)
}
