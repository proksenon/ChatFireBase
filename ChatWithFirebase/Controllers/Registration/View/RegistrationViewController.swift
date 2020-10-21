//
//  TreatmentViewController.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import UIKit

final class RegistrationViewController: UIViewController {

	var output: RegistrationViewOutput?
	weak var moduleOutput: RegistrationDelegate?
	weak var moduleInput: RegistrationModuleInput?
	let registView = RegistrationView()
	

    override func viewDidLoad() {
        super.viewDidLoad()
		output?.configureView()
//		view.backgroundColor = .yellow

        // Do any additional setup after loading the view.
    }
	override func loadView() {
		view = registView
	}

	@IBAction private func registerButtonDidTapped() {
		moduleOutput?.register(user: UserObject(email: registView.emailTextField.text,
												password: registView.passwordTextField.text,
												name: registView.nameTextField.text))
	}

}

extension RegistrationViewController: RegistrationViewInput {

	func setupView() {
		view.decorate(with: CornerRadiusDecorator(cornerRadius: 15))
		view.backgroundColor = .systemBackground
	}

	func setupRegisterButton() {
		registView.registerButton.addTarget(self, action: #selector(registerButtonDidTapped), for: .touchUpInside)
	}

	func failureTextfields() {
		registView.emailTextField.layer.borderColor = UIColor.red.cgColor
		registView.passwordTextField.layer.borderColor = UIColor.red.cgColor
		registView.nameTextField.layer.borderColor = UIColor.red.cgColor
	}
	
}
