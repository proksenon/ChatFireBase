//
//  TreatmentViewController.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import UIKit

final class EntryViewController: UIViewController {

	var output: EntryViewOutput?
	var entryView = EntryView()
	private var configurator: EntryConfiguratorProtocol

	init(configurator: EntryConfiguratorProtocol = EntryConfigurator()) {
		self.configurator = configurator
		super.init(nibName: nil, bundle: nil)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		configurator.configure(with: self)
		output?.configureView()
//		navigationController?.navigationBar.isHidden = true
		output?.signOut()

        // Do any additional setup after loading the view.
    }
	override func loadView() {
		view = entryView
	}
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
	}
	@IBAction private func changeOperationDidTapped() {
		output?.changeOperation()
	}

}

extension EntryViewController: EntryViewInput {
	
	func setupChangeOperationButton() {
		entryView.changeOperationButton.addTarget(self, action: #selector(changeOperationDidTapped), for: .touchUpInside)
	}

	func changeViewOperation(view: UIView) {
		UIView.animate(withDuration: 0.7,
					   delay: 0,
					   usingSpringWithDamping: 0.8,
					   initialSpringVelocity: 0,
					   options: .curveEaseInOut,
					   animations: {
						let origin = CGPoint(x: ChildsAtributes.Points.x, y: ChildsAtributes.Points.y)
						view.frame.origin = view.frame.origin.y < 0 ? origin : CGPoint(x: ChildsAtributes.Points.x, y: -view.frame.height)
					},
					   completion: nil)
	}

	func changeTitleOperationButton() {
		UIView.animate(withDuration: Duration.fast,
					   delay: 0,
					   options: .curveEaseIn) {
			self.entryView.changeOperationButton.alpha = 0
		} completion: { (_) in
			if let title = self.entryView.changeOperationButton.titleLabel?.text {
				self.entryView.changeOperationButton.setTitle(title == Labels.createAcc ? Labels.signIn : Labels.createAcc , for: .normal)
			}
			UIView.animate(withDuration: Duration.fast) {
				self.entryView.changeOperationButton.alpha = 1
			}
		}
	}

}
