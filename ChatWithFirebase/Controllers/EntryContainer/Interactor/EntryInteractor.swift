//
//  TreatmentTransactionInteractor.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

class EntryInteractor {

	weak var output: EntryInteractorOutput?
	var userWorker: UserWorkerProtocol

	init(presenter: EntryInteractorOutput, userWorker: UserWorkerProtocol = UserWorker()) {
		self.output = presenter
		self.userWorker = userWorker
	}
}
extension EntryInteractor: EntryInteractorInput {

	func currentUserId()->String? {
		userWorker.currentUserID()
	}

	func signIn(user: UserObject, complition: @escaping CompletionObject<ResponseStatus>) {
		userWorker.auth(user: user) { (responseStatus) in
			complition(responseStatus)
		}
	}

	func register(user: UserObject, complition: @escaping CompletionObject<ResponseStatus>) {
		userWorker.register(user: user) { (responeStatus) in
			complition(responeStatus)
		}
	}

	func signOut() {
		userWorker.signOut()
	}
}
