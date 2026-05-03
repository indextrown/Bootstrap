//  ___VARIABLE_productName:identifier___ViewController.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController {
    private let customView = ___VARIABLE_productName:identifier___View()

    // MARK: - Initializer
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - LifeCycle
    override func loadView() {
        view = customView
    }

}

#Preview {
    ___VARIABLE_productName:identifier___ViewController()
}
