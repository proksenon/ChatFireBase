//
//  TreatmentTransactionInteractor.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

final class SettingsInteractor {

	weak var output: SettingsInteractorOutput?

	init(presenter: SettingsInteractorOutput) {
		self.output = presenter
	}
}
extension SettingsInteractor: SettingsInteractorInput {
	
}
