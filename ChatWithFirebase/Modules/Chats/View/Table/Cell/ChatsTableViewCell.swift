//
//  ChatsTableViewCell.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 22.10.2020.
//

import UIKit

final class ChatsTableViewCell: UITableViewCell {

	private let avatarImageView = UIImageView()
	private let nameLabel = UILabel()
	private let lastMessage = UILabel()
	private let timeLabel = UILabel()

	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setupAvatarImageView()
		setupTimeLabel()
		setupNameLabel()
		setupLastMessage()
//		setupTimeLabel()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setupAvatarImageView() {
		addSubview(avatarImageView)

		avatarImageView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
									 avatarImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
									 avatarImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
									 avatarImageView.widthAnchor.constraint(equalToConstant: frame.height - 10)])
		avatarImageView.image = UIImage(systemName: "clock")
		avatarImageView.contentMode = .scaleAspectFill
	}

	private func setupNameLabel() {
		addSubview(nameLabel)

		nameLabel.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
									 nameLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 20),
									 nameLabel.heightAnchor.constraint(equalToConstant: 25),
									 nameLabel.rightAnchor.constraint(equalTo: timeLabel.leftAnchor, constant: -10)])

		nameLabel.text = "Name"
	}

	private func setupLastMessage() {
		addSubview(lastMessage)

		lastMessage.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([lastMessage.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
									 lastMessage.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 20),
									 lastMessage.rightAnchor.constraint(equalTo: rightAnchor, constant: -5),
									 lastMessage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)])
		lastMessage.text = "Last Message"
	}

	private func setupTimeLabel() {
		addSubview(timeLabel)

		timeLabel.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([timeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
									 timeLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -5),
									 timeLabel.widthAnchor.constraint(equalToConstant: 75)])
		timeLabel.text = "00:24"
	}
	func configureCell(with chat: ChatObject) {
		nameLabel.text = chat.userIDs.first ?? "id Didnt founded"
		lastMessage.text = chat.lastMessage
		timeLabel.text = String(chat.timestamp)
	}
}
