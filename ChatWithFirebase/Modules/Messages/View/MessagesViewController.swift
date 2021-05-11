//
//  TreatmentViewController.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import UIKit

final class MessagesViewController: UIViewController {

	var output: MessagesViewOutput?
	let messagesView = MessagesView()
	

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

	override func loadView() {
		view = messagesView
	}


}

extension MessagesViewController: MessagesViewInput {
	
}
