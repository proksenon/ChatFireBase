//
//  TreatmentViewController.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import UIKit

final class SettingsViewController: UIViewController {

	var output: SettingsViewOutput?
	

    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .red

        // Do any additional setup after loading the view.
    }


}

extension SettingsViewController: SettingsViewInput {
	
}
