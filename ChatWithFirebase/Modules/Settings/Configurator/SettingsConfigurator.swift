//
//  TreatmentTransactionConfigurator.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

final class SettingsConfigurator {

	func configure(with viewController: SettingsViewController) {
		let presenter = SettingsPresenter(view: viewController)
		let interactor = SettingsInteractor(presenter: presenter)
		let router = SettingsRouter(viewController: viewController)

		viewController.output = presenter
		presenter.interactor = interactor
		presenter.router = router
	}

}
