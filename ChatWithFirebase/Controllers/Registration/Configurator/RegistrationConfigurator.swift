//
//  TreatmentTransactionConfigurator.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

class RegistrationConfigurator {

	func configure(with viewController: RegistrationViewController) {
		let presenter = RegistrationPresenter(view: viewController)
		let interactor = RegistrationInteractor(presenter: presenter)
		let router = RegistrationRouter(viewController: viewController)

		viewController.output = presenter
		viewController.moduleInput = presenter
		presenter.interactor = interactor
		presenter.router = router
	}

}
