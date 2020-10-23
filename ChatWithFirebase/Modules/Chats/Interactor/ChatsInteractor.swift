//
//  TreatmentTransactionInteractor.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

class ChatsInteractor {

	weak var output: ChatsInteractorOutput?
	var chatsWorker: ChatsWorker

	init(presenter: ChatsInteractorOutput, chatsWorker: ChatsWorker = ChatsWorker()) {
		self.output = presenter
		self.chatsWorker = chatsWorker
	}
}

extension ChatsInteractor: ChatsInteractorInput {
	func fetchChats(_ completion: @escaping CompletionObject<[ChatObject]>) {
		chatsWorker.currentChats { (chats) in
			completion(chats)
		}
	}
}
