//
//  MainViewController.swift
//  Kadai13-MVVM
//
//  Created by 今村京平 on 2021/08/24.
//

import UIKit
import RxSwift
import RxCocoa

class MainViewController: UIViewController {

    @IBOutlet private weak var itemTableView: UITableView!

    private let viewModel: MainViewModelType = MainViewModel()
    private let dataSource = ItemDataSource()
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinding()
        viewModel.inputs.viewDidLoad()
        setupTableView()
    }

    private func setupBinding() {
        viewModel.outputs.items
            .bind(to: itemTableView.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
    }

    private func setupTableView() {
        itemTableView.register(ItemTableViewCell.nib, forCellReuseIdentifier: ItemTableViewCell.identifier)
    }
}
