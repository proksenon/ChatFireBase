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

	init(view: NewChatViewInput) {
		self.view = view
	}

}

extension NewChatPresenter: NewChatViewOutput {

}

extension NewChatPresenter: NewChatInteractorOutput {

}

extension NewChatPresenter: NewChatModuleInput {

}

extension NewChatPresenter: NewChatTableViewDelegateOutput {

}

extension NewChatPresenter: NewChatTableViewDataSourceOutput {

}
