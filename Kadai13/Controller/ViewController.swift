//
//  ViewController.swift
//  Kadai13
//
//  Created by 今村京平 on 2021/06/06.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    private let itemCell = ItemCell()
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemCell.Items.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! ItemTableViewCell
        cell.fruitsLabel.text = itemCell.Items[indexPath.row][itemCell.fruitsKey] as? String
        cell.cheakImage.image = nil
        if itemCell.Items[indexPath.row][itemCell.imageKey] as! Bool {
            cell.cheakImage.image = UIImage(named: "CheakMark")
        }
        return cell
    }
    
}

