//
//  MoviesTableViewCell.swift
//  BCS410FinalProject
//
//  Created by Brian Monaghan on 11/19/16.
//  Copyright © 2016 Brian Monaghan. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var moviesLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
