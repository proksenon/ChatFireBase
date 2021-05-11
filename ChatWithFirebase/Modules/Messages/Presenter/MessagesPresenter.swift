//
//  TreatmentTransactionPresenter.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation
final class MessagesPresenter {

	weak var view: MessagesViewInput?
	var interactor: MessagesInteractorInput?
	var router: MessagesRouterInput?
	var messagesTableViewDataSource: MessagesTableViewDataSource?
	var messagesTableViewDelegate: MessagesTableViewDelegate?

	init(view: MessagesViewInput) {
		self.view = view
	}

}

extension MessagesPresenter: MessagesViewOutput {

}

extension MessagesPresenter: MessagesInteractorOutput {

}

extension MessagesPresenter: MessagesModuleInput {

}

extension MessagesPresenter: MessagesTableViewDelegateOutput {

}

extension MessagesPresenter: MessagesTableViewDataSourceOutput {

}
