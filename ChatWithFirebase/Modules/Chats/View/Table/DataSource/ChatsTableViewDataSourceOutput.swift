//
//  ChatsTableViewDataSourceOutput.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 23.10.2020.
//

import Foundation

protocol ChatsTableViewDataSourceOutput: AnyObject {
	func numberOfRows()-> Int
	func chat(with indexPath: IndexPath)-> ChatObject
}
