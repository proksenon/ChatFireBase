//
//  TreatmentTransactionConfigurator.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import UIKit

final class TabBarConfigurator {

	func configure(with tabViewController: TabBarViewController) {
		let presenter = TabBarPresenter(view: tabViewController)
		let interactor = TabBarInteractor(presenter: presenter)
		let router = TabBarRouter(viewController: tabViewController)

		tabViewController.output = presenter
		presenter.interactor = interactor
		presenter.router = router
		configureChatsController(tabViewController: tabViewController, presenter: presenter)
		configureSettingsController(tabViewController: tabViewController, presenter: presenter)
		tabViewController.selectedIndex = 0
	}

	private func configureChatsController(tabViewController: TabBarViewController, presenter: TabBarPresenter) {
		let chatsViewController = ChatsViewController()
		let chatsConfigurator = ChatsConfigurator()
		chatsConfigurator.configure(with: chatsViewController)
		let navigationControllerChats = UINavigationController(rootViewController: chatsViewController)
		navigationControllerChats.tabBarItem = UITabBarItem(title: "chats", image: nil, selectedImage: nil)
		tabViewController.viewControllers = [navigationControllerChats]
	}

	private func configureSettingsController(tabViewController: TabBarViewController, presenter: TabBarPresenter) {
		let settingsViewController = SettingsViewController()
		let settingsConfigurator = SettingsConfigurator()
		settingsConfigurator.configure(with: settingsViewController)
		let navigationControllerSettings = UINavigationController(rootViewController: settingsViewController)
		navigationControllerSettings.tabBarItem = UITabBarItem(title: "settings", image: nil, selectedImage: nil)
		tabViewController.viewControllers?.append(navigationControllerSettings)
	}

}
