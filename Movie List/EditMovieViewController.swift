//
//  EditMovieViewController.swift
//  Movie List
//
//  Created by Cameron Collins on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class EditMovieViewController: UIViewController {

    //Variables
    var previousController: MovieListViewController?
    var selectedRow: Int?
    
    //Object| Outlets
    @IBOutlet weak var textFieldEdit: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let row = selectedRow {
            textFieldEdit.text = previousController?.movieList[row].name
        }
    }
    
    
    //Object| Actions
    @IBAction func ButtonPressed(_ sender: Any) {
        if let row = selectedRow, let delegate = previousController, let myText = textFieldEdit.text {
            delegate.movieList[row].name = myText
            delegate.objectTableView.reloadData()
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

}
