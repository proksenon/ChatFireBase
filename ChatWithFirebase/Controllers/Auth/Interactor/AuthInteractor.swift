//
//  TreatmentTransactionInteractor.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

class AuthInteractor {

	weak var output: AuthInteractorOutput?

	init(presenter: AuthInteractorOutput) {
		self.output = presenter
	}
}
extension AuthInteractor: AuthInteractorInput {
	
}
