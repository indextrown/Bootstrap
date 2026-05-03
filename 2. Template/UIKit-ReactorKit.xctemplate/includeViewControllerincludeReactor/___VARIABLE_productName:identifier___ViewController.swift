//  ___VARIABLE_productName:identifier___ViewController.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import ReactorKit
import RxSwift
import UIKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController, View {
    typealias Reactor = ___VARIABLE_productName:identifier___Reactor

    var disposeBag = DisposeBag()

    // MARK: - Initializer
    init(reactor: Reactor) {
        super.init(nibName: nil, bundle: nil)
        self.reactor = reactor
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }

    func bind(reactor: Reactor) {
        bindAction(reactor: reactor)
        bindState(reactor: reactor)
    }

    // MARK: - Bindings
    private func bindAction(reactor: Reactor) {

    }

    private func bindState(reactor: Reactor) {

    }
}

#Preview {
    ___VARIABLE_productName:identifier___ViewController(reactor: ___VARIABLE_productName:identifier___Reactor())
}
