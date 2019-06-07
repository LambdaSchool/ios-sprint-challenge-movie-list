//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Kat Milton on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {
    
    // MARK: - Outlets and Properties
    @IBOutlet var movieTable: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return paintingController.paintings.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath)
//        
//        guard let paintingCell = cell as? PaintingTableViewCell else { return cell }
//        
//        let painting = paintingController.paintings[indexPath.row]
//        paintingCell.painting = painting
//        
//        // Set delegate.
//        paintingCell.delegate = self
//        
//        return cell
//    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
