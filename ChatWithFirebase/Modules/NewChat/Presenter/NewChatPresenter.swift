//
//  TreatmentTransactionPresenter.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation
final class NewChatPresenter {

	weak var view: NewChatViewInput?
	var interactor: NewChatInteractorInput?
	var router: NewChatRouterInput?
	var newChatTableViewDataSource: NewChatTableViewDataSource?
	var newChatTableViewDelegate: NewChatTableViewDelegate?
	var users: [UserObject]?

	init(view: NewChatViewInput) {
		self.view = view
	}

}

extension NewChatPresenter: NewChatViewOutput {
	func configureView() {
		interactor?.fetchUsers(completion: { [weak self] (users) in
			self?.users = users
			self?.view?.reoladTable()
		})
	}

}

extension NewChatPresenter: NewChatInteractorOutput {

}

extension NewChatPresenter: NewChatModuleInput {

}

extension NewChatPresenter: NewChatTableViewDelegateOutput {

}

extension NewChatPresenter: NewChatTableViewDataSourceOutput {
	func numberOfRows() -> Int {
		users?.count ?? 0
	}

	func user(with indexPath: IndexPath)-> UserObject {
		users?[indexPath.row] ?? UserObject()
	}
}
