//
//  TreatmentTransactionRouter.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import UIKit

class EntryRouter: EntryRouterInput {

	weak var viewController: UIViewController?

	init(viewController: UIViewController) {
		self.viewController = viewController
	}

	func pushChat() {
		let chatViewController = ChatsViewController()
		let chatConfigurator = ChatsConfigurator()
		chatConfigurator.configure(with: chatViewController)
		viewController?.navigationController?.pushViewController(chatViewController, animated: true)
	}
}
