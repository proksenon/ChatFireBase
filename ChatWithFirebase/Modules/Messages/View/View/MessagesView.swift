//
//  MessagesView.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 26.10.2020.
//

import UIKit

class MessagesView: UIView {
	let tableView = MessagesTableView()
	let sendMessageView = SendMessageView()

	override init(frame: CGRect) {
		super.init(frame: frame)
		backgroundColor = .yellow
		setupSendMessageView()
		setupTableView()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setupSendMessageView() {
		addSubview(sendMessageView)

		sendMessageView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([sendMessageView.leftAnchor.constraint(equalTo: leftAnchor),
									 sendMessageView.rightAnchor.constraint(equalTo: rightAnchor),
									 sendMessageView.bottomAnchor.constraint(equalTo: bottomAnchor),
									 sendMessageView.heightAnchor.constraint(equalToConstant: 80)])
	}

	private func setupTableView() {
		addSubview(tableView)

		tableView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([tableView.topAnchor.constraint(equalTo: topAnchor),
									 tableView.leftAnchor.constraint(equalTo: leftAnchor),
									 tableView.rightAnchor.constraint(equalTo: rightAnchor),
									 tableView.bottomAnchor.constraint(equalTo: sendMessageView.topAnchor)])
	}

}
