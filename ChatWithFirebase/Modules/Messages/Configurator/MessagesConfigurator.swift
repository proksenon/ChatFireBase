//
//  TreatmentTransactionConfigurator.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

final class MessagesConfigurator {

	func configure(with viewController: MessagesViewController) {
		let presenter = MessagesPresenter(view: viewController)
		let interactor = MessagesInteractor(presenter: presenter)
		let router = MessagesRouter(viewController: viewController)

		viewController.output = presenter
		presenter.interactor = interactor
		presenter.router = router

		let messagesTableViewDataSource = MessagesTableViewDataSource(output: presenter)
		let messagesTableViewDelegate = MessagesTableViewDelegate(output: presenter)
		viewController.messagesView.tableView.delegate = messagesTableViewDelegate
		viewController.messagesView.tableView.dataSource = messagesTableViewDataSource
		presenter.messagesTableViewDelegate = messagesTableViewDelegate
		presenter.messagesTableViewDataSource = messagesTableViewDataSource
	}

}
