//
//  TreatmentViewController.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import UIKit

final class NewChatViewController: UIViewController {

	var output: NewChatViewOutput?
	let newChatView = NewChatView()
	

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

	override func loadView() {
		view = newChatView
	}


}

extension NewChatViewController: NewChatViewInput {
	
}
