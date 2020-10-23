//
//  TreatmentTransactionConfigurator.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

final class NewChatConfigurator {

	func configure(with viewController: NewChatViewController) {
		let presenter = NewChatPresenter(view: viewController)
		let interactor = NewChatInteractor(presenter: presenter)
		let router = NewChatRouter(viewController: viewController)

		viewController.output = presenter
		presenter.interactor = interactor
		presenter.router = router

		let newChatTableViewDelegate = NewChatTableViewDelegate(output: presenter)
		let newChatTableViewDataSource = NewChatTableViewDataSource(output: presenter)
		viewController.newChatView.tableView.delegate = newChatTableViewDelegate
		viewController.newChatView.tableView.dataSource = newChatTableViewDataSource
		presenter.newChatTableViewDelegate = newChatTableViewDelegate
		presenter.newChatTableViewDataSource = newChatTableViewDataSource
	}

}
