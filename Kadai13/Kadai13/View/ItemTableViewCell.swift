//
//  ItemTableViewCell.swift
//  Kadai13
//
//  Created by 今村京平 on 2021/09/01.
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
