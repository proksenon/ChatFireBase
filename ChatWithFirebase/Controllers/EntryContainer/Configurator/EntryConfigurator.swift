//
//  TreatmentTransactionConfigurator.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

final class EntryConfigurator: EntryConfiguratorProtocol {

	func configure(with viewController: EntryViewController) {
		let presenter = EntryPresenter(view: viewController)
		let interactor = EntryInteractor(presenter: presenter)
		let router = EntryRouter(viewController: viewController)

		viewController.output = presenter
		presenter.interactor = interactor
		presenter.router = router

		configureAuthViewController(viewController: viewController, presenter: presenter)
		configureRegistrationViewController(viewController: viewController, presenter: presenter)
	}

	private func configureAuthViewController(viewController: EntryViewController, presenter: EntryPresenter) {
		let authViewController = AuthViewController()
		let authConfigurator = AuthConfigurator()
		authConfigurator.configure(with: authViewController)
		authViewController.moduleOutput = presenter
		authViewController.view.frame.origin.y = ChildsAtributes.Points.y
		authViewController.view.frame.origin.x = ChildsAtributes.Points.x
		viewController.add(authViewController)
		presenter.authViewController = authViewController
	}

	private func configureRegistrationViewController(viewController: EntryViewController, presenter: EntryPresenter) {
		let registrationViewController = RegistrationViewController()
		let registrationConfigurator = RegistrationConfigurator()
		registrationConfigurator.configure(with: registrationViewController)
		registrationViewController.moduleOutput = presenter
		registrationViewController.view.frame.origin.y = -registrationViewController.view.frame.height
		viewController.add(registrationViewController)
		presenter.registrationViewController = registrationViewController
	}
}
