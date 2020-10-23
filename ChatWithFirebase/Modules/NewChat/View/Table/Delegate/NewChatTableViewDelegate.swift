//
//  NewChatTableViewDelegate.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 23.10.2020.
//

import UIKit

final class NewChatTableViewDelegate: NSObject, UITableViewDelegate {

	weak var output: NewChatTableViewDelegateOutput?

	init(output: NewChatTableViewDelegateOutput){
		super.init()
		self.output = output
	}

}
