//
//  UIViewController+InitViewConstraints.swift
//  RXCFirstTimeViewController
//
//  Created by ruixingchen on 11/26/19.
//  Copyright © 2019 ruixingchen. All rights reserved.
//

import UIKit

extension UIViewController.Key {

    internal static var ftv_initViewConstraints_called = "ftv_initViewConstraints_called"

}

extension UIViewController {

    public internal(set) var ftv_initViewConstraints_called:Bool {
        get {return objc_getAssociatedObject(self, &Key.ftv_initViewConstraints_called) as? Bool ?? false}
        set {objc_setAssociatedObject(self, &Key.ftv_initViewConstraints_called, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

    @objc open func ftv_initViewConstraintsIfNeeded() {
        if self.ftv_initViewConstraints_called {return}
        self.ftv_initViewConstraints_called = true
        self.ftv_initViewConstraints()
    }

    @objc open func ftv_initViewConstraints() {

    }

}
