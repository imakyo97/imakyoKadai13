//
//  ItemTableViewCell.swift
//  Kadai13
//
//  Created by 今村京平 on 2021/06/06.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet private weak var checkImageView: UIImageView!
    @IBOutlet private weak var fruitsLabel: UILabel!
    
    func configure(checkItem: CheckItem) {
        checkImageView.image = checkItem.isChecked ? UIImage(named: "CheckMark") : nil
        fruitsLabel.text = checkItem.name
    }
}
