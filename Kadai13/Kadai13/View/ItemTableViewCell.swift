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
<<<<<<< HEAD
    
    func configure(checkItem: CheckItem) {
        checkImageView.image = checkItem.isChecked ? UIImage(named: "CheckMark") : nil
=======

    func configure(checkItem: CheckItem) {
        checkImageView.image = checkItem.isChecked ? UIImage(named: "CheakMark") : nil
>>>>>>> 7cbbc951743d1c7b3e0954e2acaa40c06aace328
        fruitsLabel.text = checkItem.name
    }
}
