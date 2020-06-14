//
//  TableCell.swift
//  MenuTest2
//
//  Created by Peem on 14/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var categoryLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
