//
//  ViewDecorator.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 19.10.2020.
//

import UIKit

/// View Decorator Protocol
protocol ViewDecorator {
	/// Декорирует
	/// - Parameter view: Вью, которую декорирует функция
	func decorate(view: UIView)
}
