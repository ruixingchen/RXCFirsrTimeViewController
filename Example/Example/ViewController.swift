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

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.addLoadViewTask(removeAfterExcuted: true) {
            print("loadView Task excuted")
        }
        self.addViewDidLoadTask(removeAfterExcuted: true) {
            print("viewDidLoadTask excuted")
        }
        self.addViewWillAppearTask(removeAfterExcuted: true) {
            print("will appear task excuted")
        }
        self.addViewLayoutMarginsDidChangeTask(removeAfterExcuted: true) {
            print("ViewLayoutMarginsDidChangeTask excuted")
        }
    }

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
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }

    override func ftv_viewWillAppear_first(_ animated: Bool) {
        super.ftv_viewWillAppear_first(animated)
        
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("viewWillLayoutSubviews")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }

    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        print("viewSafeAreaInsetsDidChange")
    }

    override func viewLayoutMarginsDidChange() {
        super.viewLayoutMarginsDidChange()
        print("viewLayoutMarginsDidChange")
    }

    override func willMove(toParent parent: UIViewController?) {
        super.willMove(toParent: parent)
        print("willMove")
    }

    override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
        print("didMove")
    }

    override func updateViewConstraints() {
        super.updateViewConstraints()
        print("updateViewConstraints")

    }

    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        print("willTransition")
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransition")
        super.viewWillTransition(to: size, with: coordinator)
        coordinator.animate(alongsideTransition: nil) { (_) in
            print("旋转结束")
        }
    }

}
