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

	init(presenter: NewChatInteractorOutput) {
		self.output = presenter
	}
}
extension NewChatInteractor: NewChatInteractorInput {
	
}
