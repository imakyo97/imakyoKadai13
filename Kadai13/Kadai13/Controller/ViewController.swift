//
//  ViewController.swift
//  Kadai13
//
//  Created by 今村京平 on 2021/06/06.
//

import UIKit

<<<<<<< HEAD
class ViewController: UIViewController,UITableViewDataSource {
    
    @IBOutlet private weak var tableView: UITableView!
    
    private let checkItems: [CheckItem] = [
        CheckItem(name: "りんご", isChecked: false),
        CheckItem(name: "みかん", isChecked: true),
        CheckItem(name: "バナナ", isChecked: false),
        CheckItem(name: "パイナップル", isChecked: true)
    ]
    
=======
class ViewController: UIViewController, UITableViewDataSource {

    private let checkItems: [CheckItem] = [
        CheckItem(name: "りんご", isChecked: false),
        CheckItem(name: "みかん", isChecked: true),
        CheckItem(name: "バナナ", isChecked: false),
        CheckItem(name: "パイナップル", isChecked: true)
    ]

    @IBOutlet private weak var tableView: UITableView!

>>>>>>> 7cbbc951743d1c7b3e0954e2acaa40c06aace328
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        checkItems.count
    }
<<<<<<< HEAD
    
=======

>>>>>>> 7cbbc951743d1c7b3e0954e2acaa40c06aace328
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable:next force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! ItemTableViewCell
        cell.configure(checkItem: checkItems[indexPath.row])
        return cell
    }
}
