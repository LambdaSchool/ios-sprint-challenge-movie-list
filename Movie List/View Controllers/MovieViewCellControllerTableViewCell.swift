//
//  MovieViewCellControllerTableViewCell.swift
//  Movie List
//
//  Created by Welinkton on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieViewCellControllerTableViewCell: UITableViewCell {

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func tableViewCell(_ tableView: UITableViewCell, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 1
    }
    
    
    func tableView(_ tableViewCell: UITableView, cellForRowAt indexPath: IndexPath) -> UITableView {
        
        let cell = tableViewCell.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)

        let movie = movieController?.movies[indexPath.row]

        // Configure the cell...

        cell.textLabel?.text = movie?.name


        return cell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            let movie = movieController.movies[indexPath.row]
            
            movieController.delete(movie: movie)
            
            // Delete cell
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    
      
    

    
    
}
