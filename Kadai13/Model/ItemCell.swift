//
//  ItemCell.swift
//  Kadai13
//
//  Created by 今村京平 on 2021/06/06.
//

import Foundation

struct ItemCell {
    let fruitsKey = "fruits"
    let imageKey = "image"
    var Items: [[String : Any]] = []
    
    init() {
        Items = [
            [fruitsKey : "りんご", imageKey : false],
            [fruitsKey : "みかん", imageKey : true],
            [fruitsKey : "バナナ", imageKey : false],
            [fruitsKey : "パイナップル", imageKey : true]
        ]
    }
    
}
