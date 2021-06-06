//
//  ItemTableViewCell.swift
//  Kadai13
//
//  Created by 今村京平 on 2021/06/06.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var cheakImage: UIImageView!
    @IBOutlet weak var fruitsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
