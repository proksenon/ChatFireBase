//
//  AuthView.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 19.10.2020.
//

import UIKit

final class AuthView: UIView {

	let emailTextField: UITextField = UITextField()
	let passwordTextField: UITextField = UITextField()
	let signInButton: UIButton = UIButton()


	init() {
		let frame = CGRect(x: ChildsAtributes.Points.x,
						   y: ChildsAtributes.Points.y,
						   width: ChildsAtributes.Auth.width,
						   height: ChildsAtributes.Auth.height)
		super.init(frame: frame)
		setupEmailTextField()
		setupPasswordTextField()
		setupSignInButton()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setupEmailTextField() {
		addSubview(emailTextField)
		emailTextField.translatesAutoresizingMaskIntoConstraints = false

		NSLayoutConstraint.activate([emailTextField.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
									 emailTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
									 emailTextField.topAnchor.constraint(equalTo: topAnchor, constant: 50),
									 emailTextField.heightAnchor.constraint(equalToConstant: 40)])

		emailTextField.placeholder = Labels.email
		emailTextField.layer.borderWidth = 1

		emailTextField.text = "1@ya.ru"
	}

	private func setupPasswordTextField() {
		addSubview(passwordTextField)

		passwordTextField.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 50),
									 passwordTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
									 passwordTextField.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
									 passwordTextField.heightAnchor.constraint(equalToConstant: 40)])
		passwordTextField.placeholder = Labels.password
		passwordTextField.layer.borderWidth = 1

		passwordTextField.text = "Test123"
	}

	private func setupSignInButton() {
		addSubview(signInButton)

		signInButton.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
									 signInButton.centerXAnchor.constraint(equalTo: centerXAnchor),
									 signInButton.widthAnchor.constraint(equalToConstant: 120),
									 signInButton.heightAnchor.constraint(equalToConstant: 40)])
		signInButton.setTitle(Labels.signIn, for: .normal)
		signInButton.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
		//TO DO: Gradient for button, color to constant
		signInButton.decorate(with: [CornerRadiusDecorator(cornerRadius: 17), GradientViewDecorator(colors: [#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).cgColor, #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).cgColor], startPoint: CGPoint(x: 0, y: 0), stopPoint: CGPoint(x: 1, y: 1), frame: CGRect(x: 30, y: 60, width: 200, height: 200))])
		signInButton.setTitleColor(.systemBackground, for: .normal)
	}

}
