//
//  CornerRadiusDecorator.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 20.10.2020.
//

import UIKit

/// Закругляет углы
struct CornerRadiusDecorator: ViewDecorator {
	/// Радиус закругления
	let cornerRadius: CGFloat

	func decorate(view: UIView) {
		view.clipsToBounds = true
		view.layer.cornerRadius = cornerRadius
	}
}
