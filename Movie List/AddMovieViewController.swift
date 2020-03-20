//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Cameron Collins on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    //Variables
    var previousController: MovieListViewController?
    
    //Object| Outlets
    @IBOutlet weak var objectTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Object| Actions
    @IBAction func buttonPressed(_ sender: Any) {
        if let myText = objectTextField.text {
            if !myText.isEmpty {
                previousController?.movieList.append(Movie(name: myText))
                previousController?.objectTableView.reloadData()
            }
            navigationController?.popViewController(animated: true)
        }
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    

}
