//
//  TreatmentTransactionPresenter.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation
class ChatsPresenter {

	weak var view: ChatsViewInput?
	var interactor: ChatsInteractorInput?
	var router: ChatsRouterInput?

	init(view: ChatsViewInput) {
		self.view = view
	}

}

extension ChatsPresenter: ChatsViewOutput {

}

extension ChatsPresenter: ChatsInteractorOutput {

}

extension ChatsPresenter: ChatsModuleInput {

}
