//
//  TableViewCell.swift
//  TableViewApp
//
//  Created by Henry Aguinaga on 2016-07-11.
//  Copyright © 2016 Henry Aguinaga. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var CelImage: UIImageView!
    @IBOutlet var CellTitle: UILabel!
    @IBOutlet var CellDescription: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
