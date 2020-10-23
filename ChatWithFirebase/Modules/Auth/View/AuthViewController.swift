//
//  TreatmentViewController.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import UIKit

final class AuthViewController: UIViewController {

	var output: AuthViewOutput?
	weak var moduleOutput: AuthDelegate?
	weak var moduleInput: AuthModuleInput?
	let authView = AuthView()
	

    override func viewDidLoad() {
        super.viewDidLoad()
		output?.configureView()

        // Do any additional setup after loading the view.
    }
	override func loadView() {
		view = authView
	}
	@IBAction func signInButtonDidTapped() {
		moduleOutput?.signIn(user: UserObject(email: authView.emailTextField.text, password: authView.passwordTextField.text))
		authView.signInButton.alpha = 1
	}
	@IBAction func signInButtonTouchedDown() {
		authView.signInButton.alpha = 0.4
	}


}

extension AuthViewController: AuthViewInput {
	func setupView() {
		view.decorate(with: CornerRadiusDecorator(cornerRadius: 15))
		view.backgroundColor = .systemBackground
	}

	func setupSignInButton() {
		authView.signInButton.addTarget(self, action: #selector(signInButtonDidTapped), for: .touchUpInside)
		authView.signInButton.addTarget(self, action: #selector(signInButtonTouchedDown), for: .touchDown)
	}

	func failureTextfields() {
		authView.emailTextField.layer.borderColor = UIColor.red.cgColor
		authView.passwordTextField.layer.borderColor = UIColor.red.cgColor
	}

}
