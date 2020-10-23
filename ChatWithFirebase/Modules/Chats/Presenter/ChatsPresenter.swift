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
	var chatsTableViewDelegate: ChatsTableViewDelegate?
	var chatsTableViewDataSource: ChatsTableViewDataSource?
	private var chats: [ChatObject]?

	init(view: ChatsViewInput) {
		self.view = view
	}
	private func reloadTableView() {
		view?.reloadTableView()
	}

}

extension ChatsPresenter: ChatsViewOutput {
	func configureView() {
		interactor?.fetchChats({ [weak self] (chats) in
			print(chats)
			self?.chats = chats
			self?.reloadTableView()
		})
		view?.setupNewChatButton()
	}

	func pushNewChatViewController() {
		router?.pushNewChat()
	}

}

extension ChatsPresenter: ChatsInteractorOutput {

}

extension ChatsPresenter: ChatsModuleInput {

}

extension ChatsPresenter: ChatsTableViewDataSourceOutput {
	func numberOfRows()-> Int {
		chats?.count ?? 0
	}

	func chat(with indexPath: IndexPath)-> ChatObject {
		chats?[indexPath.row] ?? ChatObject()
	}
}

extension ChatsPresenter: ChatsTableViewDelegateOutput {

}
