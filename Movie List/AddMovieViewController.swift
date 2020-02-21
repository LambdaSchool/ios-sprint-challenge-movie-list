//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Mark Gerrior on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    // This is to let the delegator (self) to communicate with the deleget (TBD)
    var delegate: AddMovieDelegate?

    @IBAction func save(_ sender: Any) {
        //BUGBUG: Dismiss does not work
        let getFromField: String? = "Star Wars"
        guard let title = getFromField else { return }

        // Make a movie
        let movie = Movie(title: title)
        
        // Pass friend back to table view controller
        delegate?.movieWasCreated(movie)
        
        // This line doesn't work
        dismiss(animated: true, completion: nil)

        // This line does. Wrong kind of segue or wrong kind of view?
        self.navigationController?.popViewController(animated: true)
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
