//
//  ChatsTableViewDataSource.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 23.10.2020.
//

import UIKit

final class ChatsTableViewDataSource: NSObject, UITableViewDataSource {

	weak var output: ChatsTableViewDataSourceOutput?

	init(output: ChatsTableViewDataSourceOutput){
		super.init()
		self.output = output
	}
	/// Количество ячеек
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return output?.numberOfRows() ?? 0
	}
	/// Работа с ячейкой
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "chat") as? ChatsTableViewCell else { return UITableViewCell()}
		if let chatObject = output?.chat(with: indexPath) {
			cell.configureCell(with: chatObject)
		}
		return cell
	}


}
