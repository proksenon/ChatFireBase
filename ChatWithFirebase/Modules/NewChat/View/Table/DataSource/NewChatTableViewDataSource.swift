//
//  NewChatTableViewDataSource.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 23.10.2020.
//

import UIKit

final class NewChatTableViewDataSource: NSObject, UITableViewDataSource {

	weak var output: NewChatTableViewDataSourceOutput?

	init(output: NewChatTableViewDataSourceOutput){
		super.init()
		self.output = output
	}
	/// Количество ячеек
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return output?.numberOfRows() ?? 0
	}
	/// Работа с ячейкой
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.user) as? UserTableViewCell else { return UITableViewCell()}
		if let userObject = output?.user(with: indexPath) {
			print(userObject)
			cell.configureCell(with: userObject)
		}
		return cell
	}


}
