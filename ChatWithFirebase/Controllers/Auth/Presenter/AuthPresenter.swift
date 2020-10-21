//
//  TreatmentTransactionPresenter.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation
class AuthPresenter {

	weak var view: AuthViewInput?
	var interactor: AuthInteractorInput?
	var router: AuthRouterInput?

	init(view: AuthViewInput) {
		self.view = view
	}

}

extension AuthPresenter: AuthViewOutput {

	func configureView() {
		view?.setupView()
		view?.setupSignInButton()
	}
}

extension AuthPresenter: AuthInteractorOutput {

}

extension AuthPresenter: AuthModuleInput {
	func failureAuth() {
		view?.failureTextfields()
	}
}
