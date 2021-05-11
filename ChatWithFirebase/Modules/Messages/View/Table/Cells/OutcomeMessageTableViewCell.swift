//
//  OutcomeMessageTableViewCell.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 26.10.2020.
//

import UIKit

class OutcomeMessageTableViewCell: UITableViewCell {

	private let messageTextView: UITextView = UITextView()


	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setupMessageTextView()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setupMessageTextView() {
		addSubview(messageTextView)

		messageTextView.translatesAutoresizingMaskIntoConstraints = false
		contentView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([contentView.leftAnchor.constraint(greaterThanOrEqualTo: self.leftAnchor, constant: 60)])

		NSLayoutConstraint.activate([messageTextView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),
//									 messageTextView.leftAnchor.constraint(greaterThanOrEqualTo: contentView.leftAnchor, constant: 60),
									 messageTextView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
									 messageTextView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
									 messageTextView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)])
		messageTextView.text = "sada sdasdasdasda sdasdasdasdasdsa"
		messageTextView.backgroundColor = .red
	}

}
