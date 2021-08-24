//
//  MainViewModel.swift
//  Kadai13-MVVM
//
//  Created by 今村京平 on 2021/08/24.
//

import Foundation
import RxSwift
import RxCocoa

protocol MainViewModelInput {
    func viewDidLoad()
}

protocol MainViewModelOutput {
    var items: Observable<[Item]> { get }
}

protocol MainViewModelType {
    var inputs: MainViewModelInput { get }
    var outputs: MainViewModelOutput { get }
}

final class MainViewModel: MainViewModelInput, MainViewModelOutput {

    private let model: MainItemsModel = MainItems()
    private let itemsRelay = PublishRelay<[Item]>()

    var items: Observable<[Item]> {
        return itemsRelay.asObservable()
    }

    func viewDidLoad() {
        itemsRelay.accept(model.items)
    }
}

extension MainViewModel: MainViewModelType {
    var inputs: MainViewModelInput {
        return self
    }

    var outputs: MainViewModelOutput {
        return self
    }
}
