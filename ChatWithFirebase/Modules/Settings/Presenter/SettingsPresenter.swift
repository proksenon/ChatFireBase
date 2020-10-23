//
//  TreatmentTransactionPresenter.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation
final class SettingsPresenter {

	weak var view: SettingsViewInput?
	var interactor: SettingsInteractorInput?
	var router: SettingsRouterInput?

	init(view: SettingsViewInput) {
		self.view = view
	}

}

extension SettingsPresenter: SettingsViewOutput {

}

extension SettingsPresenter: SettingsInteractorOutput {

}

extension SettingsPresenter: SettingsModuleInput {

}
