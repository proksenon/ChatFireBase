//
//  ChatsTableView.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 22.10.2020.
//

import UIKit

class ChatsTableView: UITableView {

	let searchController = UISearchController()
	let searchBar: UISearchBar = UISearchBar()

	init() {
		super.init(frame: .zero, style: .grouped)
		register(ChatsTableViewCell.self, forCellReuseIdentifier: "chat")
//		tableFooterView = UIView()
		setupSearchBar()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setupSearchBar() {
		searchBar.backgroundColor = .red
		tableHeaderView = searchController.searchBar
	}
	
}
