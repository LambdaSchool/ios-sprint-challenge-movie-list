//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Bryan Cress on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {

 
    @IBOutlet weak var TableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        }
    
           

}
    
//        @objc func buttonPressed() {
//            activateButton(bool: !isOn)
//        }
//
//        func activateButton(bool: Bool) {
//
//            isOn = bool
//
//            let color = bool ? UIColor.blue : .clear
//            let title = bool ? "Seen" : "Not Seen"
//            let titleColor = bool ? .white : UIColor.blue
//
//            setTitle(title, for: .normal)
//            setTitleColor(titleColor, for: .normal)
//            backgroundColor = color
//        }
//    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

extension MovieListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
