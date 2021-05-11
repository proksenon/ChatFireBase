//
//  MessagesTableViewDataSource.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 26.10.2020.
//

import Foundation

import UIKit

final class MessagesTableViewDataSource: NSObject, UITableViewDataSource {

	weak var output: MessagesTableViewDataSourceOutput?

	init(output: MessagesTableViewDataSourceOutput){
		super.init()
		self.output = output
	}
	/// Количество ячеек
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 2
	}
	/// Работа с ячейкой
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if indexPath.row == 0 {
			guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.income) as? IncomeMessageTableViewCell else { return UITableViewCell() }
			return cell
		} else {
			guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.outcome) as? OutcomeMessageTableViewCell else { return UITableViewCell() }
			return cell
		}
//		return cell
	}


}
