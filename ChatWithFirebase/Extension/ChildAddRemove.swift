//
//  ChildAddRemove.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 20.10.2020.
//

import UIKit
///	Работа с ChildController
extension UIViewController {
	/// Добавляет Child Controller
	/// - Parameter child: ChildViewController
	func add(_ child: UIViewController) {
		addChild(child)
		view.addSubview(child.view)
		child.didMove(toParent: self)
	}

	/// Удаляет ChildController
	func remove() {
		willMove(toParent: nil)
		view.removeFromSuperview()
		removeFromParent()
	}
}
