//
//  TreatmentTransactionInteractor.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

class RegistrationInteractor {

	weak var output: RegistrationInteractorOutput?

	init(presenter: RegistrationInteractorOutput) {
		self.output = presenter
	}
}
extension RegistrationInteractor: RegistrationInteractorInput {
	
}
