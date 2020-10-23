//
//  TreatmentTransactionConfigurator.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

class ChatsConfigurator {

	func configure(with viewController: ChatsViewController) {
		let presenter = ChatsPresenter(view: viewController)
		let interactor = ChatsInteractor(presenter: presenter)
		let router = ChatsRouter(viewController: viewController)

		viewController.output = presenter
		presenter.interactor = interactor
		presenter.router = router
		
		let chatsTableViewDelegate = ChatsTableViewDelegate(output: presenter)
		let chatsTableViewDataSource = ChatsTableViewDataSource(output: presenter)
		viewController.chatsView.tableView.delegate = chatsTableViewDelegate
		viewController.chatsView.tableView.dataSource = chatsTableViewDataSource
		presenter.chatsTableViewDataSource = chatsTableViewDataSource
		presenter.chatsTableViewDelegate = chatsTableViewDelegate
	}

}
