//
//  TreatmentTransactionPresenter.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation
protocol AuthDelegate: AnyObject {
	func signIn(user: UserObject)
}

protocol RegistrationDelegate: AnyObject {
	func register(user: UserObject)
}

final class EntryPresenter {

	weak var view: EntryViewInput?
	var interactor: EntryInteractorInput?
	var router: EntryRouterInput?
	private var isSignIn: Bool = true
	var authViewController: AuthViewController?
	var registrationViewController: RegistrationViewController?

	init(view: EntryViewInput) {
		self.view = view
	}

}

extension EntryPresenter: EntryViewOutput {
	func configureView() {
		view?.setupChangeOperationButton()
		if interactor?.currentUserId() != nil {
			router?.pushChat()
		}
	}

	func signOut() {
		interactor?.signOut()
	}

	func changeOperation() {
//		if isSignIn {
//			//show reg
//		} else {
//			//show auth
//		}
//		isSignIn = !isSignIn
		guard let authView = authViewController?.view, let registView = registrationViewController?.view else {return}
		view?.changeTitleOperationButton()
		view?.changeViewOperation(view: authView)
		view?.changeViewOperation(view: registView)
	}
}

extension EntryPresenter: EntryInteractorOutput {

}

extension EntryPresenter: EntryModuleInput {

}

extension EntryPresenter: AuthDelegate {
	func signIn(user: UserObject) {
		interactor?.signIn(user: user, complition: { [weak self] (responseStatus) in
			switch responseStatus {
			case .success: self?.router?.pushChat()
			case .failure: self?.authViewController?.moduleInput?.failureAuth()
			}
		})
	}
}

extension EntryPresenter: RegistrationDelegate {
	func register(user: UserObject) {
		interactor?.register(user: user, complition: { [weak self] (responseStatus) in
			print("rrreeessponse = \(responseStatus)")
			switch responseStatus {
			case .success: self?.router?.pushChat()
			case .failure: self?.registrationViewController?.moduleInput?.failureAuth()
			}
		})
	}
}
