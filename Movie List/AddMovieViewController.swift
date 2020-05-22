//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Drew Miller on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieViewControllerDelegate: class {
    func addMovieViewController(_ viewController: AddMovieViewController, didUpdateText text: String)
}

class AddMovieViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var addNewMovieOutlet: UITextField!
    weak var delegate: AddMovieViewController?
    
    @IBAction func addMovieButtonAction(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNewMovieOutlet.delegate = self

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
