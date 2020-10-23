//
//  TreatmentViewController.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import UIKit

class ChatsViewController: UIViewController {

	var output: ChatsViewOutput?
	let chatsView = ChatsView()
	var newChatButton: UIBarButtonItem?
	

    override func viewDidLoad() {
        super.viewDidLoad()
		output?.configureView()
        // Do any additional setup after loading the view.
    }

	override func loadView() {
		view = chatsView
	}
	@IBAction private func newChatButtonDidTapped() {
		print("newChatButtonDidTapped")
	}

}

extension ChatsViewController: ChatsViewInput {
	func reloadTableView() {
		chatsView.tableView.reloadData()
	}

	func setupNewChatButton() {

		let newChatButton = UIBarButtonItem(image: UIImage(systemName: "clock"),
										style: .done,
										target: self,
										action: #selector(newChatButtonDidTapped))
//		navigationController?.navigationItem.rightBarButtonItem = newChatButton

//		navigationController!.navigationItem.rightBarButtonItem = newChatButton
		navigationItem.rightBarButtonItem = newChatButton
		self.newChatButton = newChatButton
	}
}
