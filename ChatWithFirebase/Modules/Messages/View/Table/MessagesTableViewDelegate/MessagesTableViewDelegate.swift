//
//  MessagesTableViewDelegate.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 26.10.2020.
//

import UIKit

final class MessagesTableViewDelegate:NSObject, UITableViewDelegate {

	weak var output: MessagesTableViewDelegateOutput?

	init(output: MessagesTableViewDelegateOutput){
		super.init()
		self.output = output
	}

	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 50
	}
}
