//
//  SendMessageView.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 26.10.2020.
//

import UIKit

class SendMessageView: UIView {
	let messageTextView = UITextView()
	let sendButton = UIButton()

	init() {
		let frame = CGRect(x: 0, y: ViewConstants.height - 80, width: ViewConstants.width, height: 80)
		super.init(frame: frame)
		setupSendButton()
		setupMessageTextView()
		backgroundColor = .red
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setupSendButton() {
		addSubview(sendButton)
		sendButton.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([sendButton.topAnchor.constraint(equalTo: topAnchor),
									 sendButton.rightAnchor.constraint(equalTo: rightAnchor),
									 sendButton.bottomAnchor.constraint(equalTo: bottomAnchor),
									 sendButton.widthAnchor.constraint(equalToConstant: 40)])
		sendButton.imageView?.image = UIImage(systemName: "checkmark")
	}

	private func setupMessageTextView() {
		addSubview(messageTextView)

		messageTextView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([messageTextView.leftAnchor.constraint(equalTo: leftAnchor),
									 messageTextView.topAnchor.constraint(equalTo: topAnchor),
//									 messageTextView.bottomAnchor.constraint(equalTo: bottomAnchor),
									 messageTextView.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -40),
									 messageTextView.rightAnchor.constraint(equalTo: sendButton.leftAnchor)])
		messageTextView.text = "ajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasdajsdjasjdadaasdasdasdasd"
		messageTextView.backgroundColor = .brown
	}
}
