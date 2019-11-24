//
//  UIViewController+MethodSwitch.swift
//  Example
//
//  Created by ruixingchen on 2019/11/25.
//  Copyright © 2019 ruixingchen. All rights reserved.
//

import UIKit

extension UIViewController {

    @objc func ftv_loadView() {
        self.ftv_loadView()
        for i in self.ftv_loadViewTasks {i.task()}
        self.ftv_loadViewTasks = self.ftv_loadViewTasks.filter({!$0.removedAfterExcuted})
    }

    @objc func ftv_viewDidLoad() {
        self.ftv_viewDidLoad()
        for i in self.ftv_viewDidLoadTasks {i.task()}
        self.ftv_viewDidLoadTasks = self.ftv_viewDidLoadTasks.filter({!$0.removedAfterExcuted})
    }

    @objc func ftv_viewWillAppear(_ animated: Bool) {
        if !self.ftv_viewWillAppear_called {
            self.ftv_viewWillAppear_called = true
            self.ftv_viewWillAppear_first(animated)
        }

        self.ftv_viewWillAppear(animated)

        for i in self.ftv_viewWillAppearTasks {i.task()}
        self.ftv_viewWillAppearTasks = self.ftv_viewWillAppearTasks.filter({!$0.removedAfterExcuted})
    }

    @available(iOS 11.0, *)
    @objc open func ftv_viewLayoutMarginsDidChange() {
        if !self.ftv_viewLayoutMarginsDidChange_called {
            self.ftv_viewLayoutMarginsDidChange_called = true
            self.ftv_viewLayoutMarginsDidChange_first()
        }

        self.ftv_viewLayoutMarginsDidChange()

        for i in self.ftv_viewLayoutMarginsDidChangeTasks {i.task()}
        self.ftv_viewLayoutMarginsDidChangeTasks = self.ftv_viewLayoutMarginsDidChangeTasks.filter({!$0.removedAfterExcuted})
    }

    @available(iOS 11.0, *)
    @objc func ftv_viewSafeAreaInsetsDidChange() {
        if !self.ftv_viewSafeAreaInsetsDidChange_called {
            self.ftv_viewSafeAreaInsetsDidChange_called = true
            self.ftv_viewSafeAreaInsetsDidChange_first()
        }

        self.ftv_viewSafeAreaInsetsDidChange()

        for i in self.ftv_viewSafeAreaInsetsDidChangeTasks {i.task()}
        self.ftv_viewSafeAreaInsetsDidChangeTasks = self.ftv_viewSafeAreaInsetsDidChangeTasks.filter({!$0.removedAfterExcuted})
    }

    @available(iOS 6.0, *)
    @objc func ftv_updateViewConstraints() {
        if !self.ftv_updateViewConstraints_called {
            self.ftv_updateViewConstraints_called = true
            self.ftv_updateViewConstraints_first()
        }

        self.ftv_updateViewConstraints()

        for i in self.ftv_updateViewConstraintsTasks {i.task()}
        self.ftv_updateViewConstraintsTasks = self.ftv_updateViewConstraintsTasks.filter({!$0.removedAfterExcuted})
    }

    @available(iOS 5.0, *)
    @objc func ftv_viewWillLayoutSubviews() {
        if !self.ftv_viewWillLayoutSubviews_called {
            self.ftv_viewWillLayoutSubviews_called = true
            self.ftv_viewWillLayoutSubviews_first()
        }

        self.ftv_viewWillLayoutSubviews()

        for i in self.ftv_viewWillLayoutSubviewsTasks {i.task()}
        self.ftv_viewWillLayoutSubviewsTasks = self.ftv_viewWillLayoutSubviewsTasks.filter({!$0.removedAfterExcuted})
    }

    @available(iOS 5.0, *)
    @objc func ftv_viewDidLayoutSubviews() {
        if !self.ftv_viewDidLayoutSubviews_called {
            self.ftv_viewDidLayoutSubviews_called = true
            self.ftv_viewDidLayoutSubviews_first()
        }

        self.ftv_viewDidLayoutSubviews()

        for i in self.ftv_viewDidLayoutSubviewsTasks {i.task()}
        self.ftv_viewDidLayoutSubviewsTasks = self.ftv_viewDidLayoutSubviewsTasks.filter({!$0.removedAfterExcuted})
    }

    @objc func ftv_viewDidAppear(_ animated: Bool) {
        if !self.ftv_viewDidAppear_called {
            self.ftv_viewDidAppear_called = true
            self.ftv_viewDidAppear_first(animated)
        }

        self.ftv_viewDidAppear(animated)

        for i in self.ftv_viewDidAppearTasks {i.task()}
        self.ftv_viewDidAppearTasks = self.ftv_viewDidAppearTasks.filter({!$0.removedAfterExcuted})
    }

    @objc func ftv_viewWillDisappear(_ animated: Bool) {
        if !self.ftv_viewWillDisappear_called {
            self.ftv_viewWillDisappear_called = true
            self.ftv_viewWillDisappear_first(animated)
        }

        self.ftv_viewWillDisappear(animated)

        for i in self.ftv_viewWillDisappearTasks {i.task()}
        self.ftv_viewWillDisappearTasks = self.ftv_viewWillDisappearTasks.filter({!$0.removedAfterExcuted})
    }

    @objc func ftv_viewDidDisappear(_ animated: Bool) {
        if !self.ftv_viewDidDisappear_called {
            self.ftv_viewDidDisappear_called = true
            self.ftv_viewDidDisappear_first(animated)
        }

        self.ftv_viewDidDisappear(animated)

        for i in self.ftv_viewDidDisappearTasks {i.task()}
        self.ftv_viewDidDisappearTasks = self.ftv_viewDidDisappearTasks.filter({!$0.removedAfterExcuted})
    }

    @available(iOS 5.0, *)
    @objc func ftv_willMove(toParent parent: UIViewController?) {
        if !self.ftv_willMove_called {
            self.ftv_willMove_called = true
            self.ftv_willMove_first(toParent: parent)
        }

        self.ftv_willMove(toParent: parent)

        for i in self.ftv_willMoveTasks {i.task()}
        self.ftv_willMoveTasks = self.ftv_willMoveTasks.filter({!$0.removedAfterExcuted})
    }

    @available(iOS 5.0, *)
    @objc func ftv_didMove(toParent parent: UIViewController?) {
        if !self.ftv_didMove_called {
            self.ftv_didMove_called = true
            self.ftv_didMove_first(toParent: parent)
        }

        self.ftv_didMove(toParent: parent)

        for i in self.ftv_didMoveTasks {i.task()}
        self.ftv_didMoveTasks = self.ftv_didMoveTasks.filter({!$0.removedAfterExcuted})
    }

}
