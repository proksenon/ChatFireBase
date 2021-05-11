//
//  UserTableViewCell.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 24.10.2020.
//

import UIKit

class UserTableViewCell: UITableViewCell {

	private let avatarImageView: UIImageView = UIImageView()
	private let nameLabel: UILabel = UILabel()

	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setupAvatarImageView()
		setupNameLabel()
		
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
		NSLayoutConstraint.activate([nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
									 nameLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 25)])
		nameLabel.text = "name"
	}

	func configureCell(with user: UserObject) {
		nameLabel.text = user.name
		avatarImageView.image = user.profilePic
	}

}
