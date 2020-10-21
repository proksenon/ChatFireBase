//
//  RegistrationView.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 20.10.2020.
//

import UIKit

class RegistrationView: UIView {

	let nameTextField: UITextField = UITextField()
	let emailTextField: UITextField = UITextField()
	let passwordTextField: UITextField = UITextField()
	let registerButton: UIButton = UIButton()


	init() {
		let frame = CGRect(x: ChildsAtributes.Points.x,
						   y: ChildsAtributes.Points.y,
						   width: ChildsAtributes.Registration.width,
						   height: ChildsAtributes.Registration.height)
		super.init(frame: frame)
		setupNameTextField()
		setupEmailTextField()
		setupPasswordTextField()
		setupSignInButton()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setupNameTextField() {
		addSubview(nameTextField)
		nameTextField.translatesAutoresizingMaskIntoConstraints = false

		NSLayoutConstraint.activate([nameTextField.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
									 nameTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
									 nameTextField.topAnchor.constraint(equalTo: topAnchor, constant: 50),
									 nameTextField.heightAnchor.constraint(equalToConstant: 40)])

		nameTextField.placeholder = Labels.name
		nameTextField.layer.borderWidth = 1
	}

	private func setupEmailTextField() {
		addSubview(emailTextField)
		emailTextField.translatesAutoresizingMaskIntoConstraints = false

		NSLayoutConstraint.activate([emailTextField.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
									 emailTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
									 emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 50),
									 emailTextField.heightAnchor.constraint(equalToConstant: 40)])

		emailTextField.placeholder = Labels.email
		emailTextField.layer.borderWidth = 1
	}

	private func setupPasswordTextField() {
		addSubview(passwordTextField)
		passwordTextField.translatesAutoresizingMaskIntoConstraints = false

		NSLayoutConstraint.activate([passwordTextField.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
									 passwordTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
									 passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 50),
									 passwordTextField.heightAnchor.constraint(equalToConstant: 40)])

		passwordTextField.placeholder = Labels.password
		passwordTextField.layer.borderWidth = 1
	}

	private func setupSignInButton() {
		addSubview(registerButton)

		registerButton.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([registerButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
									 registerButton.centerXAnchor.constraint(equalTo: centerXAnchor),
									 registerButton.widthAnchor.constraint(equalToConstant: 120),
									 registerButton.heightAnchor.constraint(equalToConstant: 40)])
		registerButton.setTitle(Labels.register, for: .normal)
		registerButton.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
		//TO DO: Gradient for button, color to constant
		registerButton.decorate(with: [CornerRadiusDecorator(cornerRadius: 17), GradientViewDecorator(colors: [#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).cgColor, #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).cgColor], startPoint: CGPoint(x: 0, y: 0), stopPoint: CGPoint(x: 1, y: 1), frame: CGRect(x: 30, y: 60, width: 200, height: 200))])
		registerButton.setTitleColor(.systemBackground, for: .normal)
	}
	
}
