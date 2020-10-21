//
//  LocalizedString.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 20.10.2020.
//

import Foundation

extension String {
	/// Локализует строку
	var localized: String {
		return NSLocalizedString(self, comment: "")
	}
}
