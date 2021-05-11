//
//  NewChatTableView.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 23.10.2020.
//

import UIKit

class NewChatTableView: UITableView {
	let searchController = UISearchController()

	init() {
		super.init(frame: .zero, style: .grouped)
		register(UserTableViewCell.self, forCellReuseIdentifier: Cells.user)
//		tableFooterView = UIView()
		setupSearchBar()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setupSearchBar() {
		tableHeaderView = searchController.searchBar
	}

}
