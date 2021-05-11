//
//  MessagesTableView.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 26.10.2020.
//

import UIKit

class MessagesTableView: UITableView {

	init() {
		super.init(frame: .zero, style: .grouped)
		register(IncomeMessageTableViewCell.self, forCellReuseIdentifier: Cells.income)
		register(OutcomeMessageTableViewCell.self, forCellReuseIdentifier: Cells.outcome)
//		tableFooterView = UIView()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

}
