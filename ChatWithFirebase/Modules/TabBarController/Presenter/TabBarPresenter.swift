//
//  TreatmentTransactionPresenter.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation
final class TabBarPresenter {

	weak var view: TabBarViewInput?
	var interactor: TabBarInteractorInput?
	var router: TabBarRouterInput?

	init(view: TabBarViewInput) {
		self.view = view
	}

}

extension TabBarPresenter: TabBarViewOutput {

}

extension TabBarPresenter: TabBarInteractorOutput {

}

extension TabBarPresenter: TabBarModuleInput {

}
