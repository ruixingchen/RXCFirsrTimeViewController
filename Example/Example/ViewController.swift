//
//  ViewController.swift
//  Example
//
//  Created by ruixingchen on 2019/11/24.
//  Copyright © 2019 ruixingchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let subview = UIView()

    var array:[String] = []
    var array2:[NSObject] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        self.view.addSubview(self.subview)
        self.subview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.subview.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.subview.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.subview.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.subview.backgroundColor = UIColor.orange
        self.subview.translatesAutoresizingMaskIntoConstraints = false

        for i in 0..<1000000 {
            array.append("self.subview.translatesAutoresizingMaskIntoConstraints = false")
        }

//        for i in 0..<1000000 {
//            array2.append(NSObject())
//        }

    }

    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }

    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }

    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }

    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }

    override func viewSafeAreaInsetsDidChange() {
        print("viewSafeAreaInsetsDidChange")
    }

    override func viewLayoutMarginsDidChange() {
        print("viewLayoutMarginsDidChange")
    }

    override func willMove(toParent parent: UIViewController?) {
        print("willMove")
    }

    override func didMove(toParent parent: UIViewController?) {
        print("didMove")
    }

    override func updateViewConstraints() {
        print("updateViewConstraints")
        super.updateViewConstraints()
    }

    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        print("willTransition")
    }

}
