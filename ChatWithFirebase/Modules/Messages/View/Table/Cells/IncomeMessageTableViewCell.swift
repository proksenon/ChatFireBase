//
//  IncomeMessageTableViewCell.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 26.10.2020.
//

import UIKit

class IncomeMessageTableViewCell: UITableViewCell {
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
		NSLayoutConstraint.activate([messageTextView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
									 messageTextView.rightAnchor.constraint(lessThanOrEqualTo: rightAnchor, constant: -60),
									 messageTextView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
									 messageTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)])
		messageTextView.text = "Income sadasdasda sdasd asdas dasdasdasdsa"
		messageTextView.backgroundColor = .blue
	}

}
