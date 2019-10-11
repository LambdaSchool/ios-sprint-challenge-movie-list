//
//  EditMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_204 on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol EditMovieDelegate {
    func movieWasEdited(_ movie: Movie)
}

class EditMovieViewController: UIViewController {

    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "EditMovieSegue" {
            
        }
        
    }

}
