//
//  TreatmentTransactionInteractor.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

final class NewChatInteractor {

	weak var output: NewChatInteractorOutput?
	var userWorker: UserWorker

	init(presenter: NewChatInteractorOutput, userWorker: UserWorker = UserWorker()) {
		self.output = presenter
		self.userWorker = userWorker
	}
}

extension NewChatInteractor: NewChatInteractorInput {
	func fetchUsers(completion: @escaping CompletionObject<[UserObject]>) {
		guard let id = userWorker.currentUserID() else { return }
		userWorker.contacts { (results) in
			let users = results.filter { (user) -> Bool in
				user.id != id
			}
			completion(users)
		}
	}
}
