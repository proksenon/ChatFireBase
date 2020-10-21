//
//  TreatmentTransactionPresenter.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation
class RegistrationPresenter {

	weak var view: RegistrationViewInput?
	var interactor: RegistrationInteractorInput?
	var router: RegistrationRouterInput?

	init(view: RegistrationViewInput) {
		self.view = view
	}

}

extension RegistrationPresenter: RegistrationViewOutput {
	func configureView() {
		view?.setupView()
		view?.setupRegisterButton()
	}

}

extension RegistrationPresenter: RegistrationInteractorOutput {

}

extension RegistrationPresenter: RegistrationModuleInput {
	func failureAuth() {
		view?.failureTextfields()
	}
}
