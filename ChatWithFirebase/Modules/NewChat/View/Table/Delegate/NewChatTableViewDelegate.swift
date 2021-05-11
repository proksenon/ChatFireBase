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

	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 75
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		output.didSelect(indexPath: indexPath)
		tableView.deselectRow(at: indexPath, animated: true)
	}
}
