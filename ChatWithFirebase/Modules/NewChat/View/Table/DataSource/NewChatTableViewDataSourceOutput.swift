//
//  NewChatTableViewDataSourceOutput.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 23.10.2020.
//

import Foundation

protocol NewChatTableViewDataSourceOutput: AnyObject {
	func numberOfRows() -> Int
	func user(with indexPath: IndexPath)-> UserObject
}
