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



class AddMovieViewController: UIViewController {

    var delegate: AddMovieDelegate?
    
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
            
        let movie = Movie(title: userText, seenOrUnseen: false)

    delegate?.movieWasAdded(movie)
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


