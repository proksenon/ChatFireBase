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

	init(presenter: ChatsInteractorOutput) {
		self.output = presenter
	}
}
extension ChatsInteractor: ChatsInteractorInput {
	
}
