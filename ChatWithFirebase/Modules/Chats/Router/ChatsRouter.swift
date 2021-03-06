//
//  TreatmentTransactionRouter.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import UIKit

class ChatsRouter: ChatsRouterInput {

	weak var viewController: UIViewController?

	init(viewController: UIViewController) {
		self.viewController = viewController
	}

	func pushNewChat() {
		let newChatViewController = NewChatViewController()
		let newChatConfigurator = NewChatConfigurator()
		newChatConfigurator.configure(with: newChatViewController)
		viewController?.navigationController?.pushViewController(newChatViewController, animated: true)
	}

}
