//
//  UIVIewController+LifeCycleTask.swift
//  Example
//
//  Created by ruixingchen on 11/25/19.
//  Copyright © 2019 ruixingchen. All rights reserved.
//

import UIKit

extension UIViewController {

    public class FTVLifeCycleTask {

        public var removedAfterExcuted:Bool

        internal var task:()->Void

        public init(removedAfterExcuted:Bool=true, task: @escaping ()->Void) {
            self.task = task
            self.removedAfterExcuted = removedAfterExcuted
        }
    }

}

extension UIViewController {

    public var ftv_loadViewTasks:[FTVLifeCycleTask] {
        get {return objc_getAssociatedObject(self, &Key.ftv_loadView_task) as? [FTVLifeCycleTask] ?? []}
        set {objc_setAssociatedObject(self, &Key.ftv_loadView_task, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

    public var ftv_viewDidLoadTasks:[FTVLifeCycleTask] {
        get {return objc_getAssociatedObject(self, &Key.ftv_viewDidLoad_task) as? [FTVLifeCycleTask] ?? []}
        set {objc_setAssociatedObject(self, &Key.ftv_viewDidLoad_task, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

    public var ftv_viewWillAppearTasks:[FTVLifeCycleTask] {
        get {return objc_getAssociatedObject(self, &Key.ftv_viewWillAppear_task) as? [FTVLifeCycleTask] ?? []}
        set {objc_setAssociatedObject(self, &Key.ftv_viewWillAppear_task, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

    public var ftv_viewLayoutMarginsDidChangeTasks:[FTVLifeCycleTask] {
        get {return objc_getAssociatedObject(self, &Key.ftv_viewLayoutMarginsDidChange_task) as? [FTVLifeCycleTask] ?? []}
        set {objc_setAssociatedObject(self, &Key.ftv_viewLayoutMarginsDidChange_task, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

    public var ftv_viewSafeAreaInsetsDidChangeTasks:[FTVLifeCycleTask] {
        get {return objc_getAssociatedObject(self, &Key.ftv_viewSafeAreaInsetsDidChange_task) as? [FTVLifeCycleTask] ?? []}
        set {objc_setAssociatedObject(self, &Key.ftv_viewSafeAreaInsetsDidChange_task, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

    public var ftv_updateViewConstraintsTasks:[FTVLifeCycleTask] {
        get {return objc_getAssociatedObject(self, &Key.ftv_updateViewConstraints_task) as? [FTVLifeCycleTask] ?? []}
        set {objc_setAssociatedObject(self, &Key.ftv_updateViewConstraints_task, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

    public var ftv_viewWillLayoutSubviewsTasks:[FTVLifeCycleTask] {
        get {return objc_getAssociatedObject(self, &Key.ftv_viewWillLayoutSubviews_task) as? [FTVLifeCycleTask] ?? []}
        set {objc_setAssociatedObject(self, &Key.ftv_viewWillLayoutSubviews_task, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

    public var ftv_viewDidLayoutSubviewsTasks:[FTVLifeCycleTask] {
        get {return objc_getAssociatedObject(self, &Key.ftv_viewDidLayoutSubviews_task) as? [FTVLifeCycleTask] ?? []}
        set {objc_setAssociatedObject(self, &Key.ftv_viewDidLayoutSubviews_task, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

    public var ftv_viewDidAppearTasks:[FTVLifeCycleTask] {
        get {return objc_getAssociatedObject(self, &Key.ftv_viewDidAppear_task) as? [FTVLifeCycleTask] ?? []}
        set {objc_setAssociatedObject(self, &Key.ftv_viewDidAppear_task, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

    public var ftv_viewWillDisappearTasks:[FTVLifeCycleTask] {
        get {return objc_getAssociatedObject(self, &Key.ftv_viewWillDisappear_task) as? [FTVLifeCycleTask] ?? []}
        set {objc_setAssociatedObject(self, &Key.ftv_viewWillDisappear_task, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

    public var ftv_viewDidDisappearTasks:[FTVLifeCycleTask] {
        get {return objc_getAssociatedObject(self, &Key.ftv_viewDidDisappear_task) as? [FTVLifeCycleTask] ?? []}
        set {objc_setAssociatedObject(self, &Key.ftv_viewDidDisappear_task, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

    public var ftv_willMoveTasks:[FTVLifeCycleTask] {
        get {return objc_getAssociatedObject(self, &Key.ftv_willMove_task) as? [FTVLifeCycleTask] ?? []}
        set {objc_setAssociatedObject(self, &Key.ftv_willMove_task, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

    public var ftv_didMoveTasks:[FTVLifeCycleTask] {
        get {return objc_getAssociatedObject(self, &Key.ftv_didMove_task) as? [FTVLifeCycleTask] ?? []}
        set {objc_setAssociatedObject(self, &Key.ftv_didMove_task, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)}
    }

}

extension UIViewController {

    @discardableResult
    public func addLoadViewTask(removeAfterExcuted:Bool, task:@escaping ()->Void)->FTVLifeCycleTask {
        let task = FTVLifeCycleTask(removedAfterExcuted: removeAfterExcuted, task: task)
        self.ftv_loadViewTasks.append(task)
        return task
    }

    @discardableResult
    public func addViewDidLoadTask(removeAfterExcuted:Bool, task:@escaping ()->Void)->FTVLifeCycleTask {
        let task = FTVLifeCycleTask(removedAfterExcuted: removeAfterExcuted, task: task)
        self.ftv_viewDidLoadTasks.append(task)
        return task
    }

    @discardableResult
    public func addViewWillAppearTask(removeAfterExcuted:Bool, task:@escaping ()->Void)->FTVLifeCycleTask {
        let task = FTVLifeCycleTask(removedAfterExcuted: removeAfterExcuted, task: task)
        self.ftv_viewWillAppearTasks.append(task)
        return task
    }

    @discardableResult
    public func addViewLayoutMarginsDidChangeTask(removeAfterExcuted:Bool, task:@escaping ()->Void)->FTVLifeCycleTask {
        let task = FTVLifeCycleTask(removedAfterExcuted: removeAfterExcuted, task: task)
        self.ftv_viewLayoutMarginsDidChangeTasks.append(task)
        return task
    }

    @discardableResult
    public func addViewSafeAreaInsetsDidChangeTask(removeAfterExcuted:Bool, task:@escaping ()->Void)->FTVLifeCycleTask {
        let task = FTVLifeCycleTask(removedAfterExcuted: removeAfterExcuted, task: task)
        self.ftv_viewSafeAreaInsetsDidChangeTasks.append(task)
        return task
    }

    @discardableResult
    public func addUpdateViewConstraintsTask(removeAfterExcuted:Bool, task:@escaping ()->Void)->FTVLifeCycleTask {
        let task = FTVLifeCycleTask(removedAfterExcuted: removeAfterExcuted, task: task)
        self.ftv_updateViewConstraintsTasks.append(task)
        return task
    }

    @discardableResult
    public func addViewWillLayoutSubviewsTask(removeAfterExcuted:Bool, task:@escaping ()->Void)->FTVLifeCycleTask {
        let task = FTVLifeCycleTask(removedAfterExcuted: removeAfterExcuted, task: task)
        self.ftv_viewWillLayoutSubviewsTasks.append(task)
        return task
    }

    @discardableResult
    public func addViewDidLayoutSubviewsTask(removeAfterExcuted:Bool, task:@escaping ()->Void)->FTVLifeCycleTask {
        let task = FTVLifeCycleTask(removedAfterExcuted: removeAfterExcuted, task: task)
        self.ftv_viewDidLayoutSubviewsTasks.append(task)
        return task
    }

    @discardableResult
    public func addViewDidAppearTask(removeAfterExcuted:Bool, task:@escaping ()->Void)->FTVLifeCycleTask {
        let task = FTVLifeCycleTask(removedAfterExcuted: removeAfterExcuted, task: task)
        self.ftv_viewDidAppearTasks.append(task)
        return task
    }

    @discardableResult
    public func addViewWillDisappearTask(removeAfterExcuted:Bool, task:@escaping ()->Void)->FTVLifeCycleTask {
        let task = FTVLifeCycleTask(removedAfterExcuted: removeAfterExcuted, task: task)
        self.ftv_viewWillDisappearTasks.append(task)
        return task
    }

    @discardableResult
    public func addViewDidDisappearTask(removeAfterExcuted:Bool, task:@escaping ()->Void)->FTVLifeCycleTask {
        let task = FTVLifeCycleTask(removedAfterExcuted: removeAfterExcuted, task: task)
        self.ftv_viewDidDisappearTasks.append(task)
        return task
    }

    @discardableResult
    public func addWillMoveTask(removeAfterExcuted:Bool, task:@escaping ()->Void)->FTVLifeCycleTask {
        let task = FTVLifeCycleTask(removedAfterExcuted: removeAfterExcuted, task: task)
        self.ftv_willMoveTasks.append(task)
        return task
    }

    @discardableResult
    public func addDidMoveTask(removeAfterExcuted:Bool, task:@escaping ()->Void)->FTVLifeCycleTask {
        let task = FTVLifeCycleTask(removedAfterExcuted: removeAfterExcuted, task: task)
        self.ftv_didMoveTasks.append(task)
        return task
    }

}
