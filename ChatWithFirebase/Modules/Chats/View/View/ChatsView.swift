//
//  ChatsView.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 22.10.2020.
//

import UIKit

class ChatsView: UIView {

	let tableView: UITableView = ChatsTableView()

	override init(frame: CGRect) {
		super.init(frame: frame)
		setupTableView() 
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setupTableView() {
		addSubview(tableView)

		tableView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([tableView.topAnchor.constraint(equalTo: topAnchor),
									 tableView.leftAnchor.constraint(equalTo: leftAnchor),
									 tableView.rightAnchor.constraint(equalTo: rightAnchor),
									 tableView.bottomAnchor.constraint(equalTo: bottomAnchor)])

	}
}
