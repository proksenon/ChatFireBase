//
//  DecorateView.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 19.10.2020.
//

import UIKit

extension UIView {

	/// Decorate view
	/// - Parameter decorator: decorator for view
	func decorate(with decorator: ViewDecorator) {
		decorator.decorate(view: self)
	}

	/// Decorate view with Array View Decorators
	/// - Parameter decorators: Array View Decorators
	func decorate(with decorators: [ViewDecorator]) {
		decorators.forEach { $0.decorate(view: self) }
	}
}
