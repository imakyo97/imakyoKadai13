//
//  MainItems.swift
//  Kadai13-MVVM
//
//  Created by 今村京平 on 2021/08/24.
//

import Foundation

protocol MainItemsModel {
    var items: [Item] { get }
}

final class MainItems: MainItemsModel{
    enum Fruits {
        static let apple = "りんご"
        static let orange = "みかん"
        static let banana = "バナナ"
        static let pinapple = "パイナップル"
    }

    var items: [Item] = [
        Item(isChecked: false, name: Fruits.apple),
        Item(isChecked: true, name: Fruits.orange),
        Item(isChecked: false, name: Fruits.banana),
        Item(isChecked: true, name: Fruits.pinapple)
    ]
}
