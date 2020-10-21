//
//  TreatmentTransactionConfigurator.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

class AuthConfigurator {

	func configure(with viewController: AuthViewController) {
		let presenter = AuthPresenter(view: viewController)
		let interactor = AuthInteractor(presenter: presenter)
		let router = AuthRouter(viewController: viewController)

		viewController.output = presenter
		viewController.moduleInput = presenter
		presenter.interactor = interactor
		presenter.router = router
	}

}
